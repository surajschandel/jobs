/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobs.util;

import java.io.UnsupportedEncodingException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.KeySpec;

import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;

public class DesEncrypter {

    private static Cipher ecipher;
    private static Cipher dcipher;
    private static String keyText = "VRHKG34YW4WANDJCHBFGNHH";
    private static byte[] salt = {
        (byte) 0xA9, (byte) 0x9B, (byte) 0xC8, (byte) 0x32,
        (byte) 0x56, (byte) 0x35, (byte) 0xE3, (byte) 0x03
    };
    private static int iterationCount = 3;

    private static void prepareKey() {
        try {

            KeySpec keySpec = new PBEKeySpec(keyText.toCharArray(), salt, iterationCount);
            SecretKey key = SecretKeyFactory.getInstance("PBEWithMD5AndDES").generateSecret(keySpec);

            ecipher = Cipher.getInstance(key.getAlgorithm());
            dcipher = Cipher.getInstance(key.getAlgorithm());

            AlgorithmParameterSpec paramSpec = new PBEParameterSpec(salt, iterationCount);

            ecipher.init(Cipher.ENCRYPT_MODE, key, paramSpec);
            dcipher.init(Cipher.DECRYPT_MODE, key, paramSpec);

        } catch (Exception e) {
        }
    }

    public static String encrypt(String str) {
        if (str == null) {
            return null;
        }
        prepareKey();
        try {

            byte[] utf8 = str.getBytes("UTF8");
            byte[] enc = ecipher.doFinal(utf8);
//            return new sun.misc.BASE64Encoder().encode(enc);
            return org.apache.commons.codec.binary.Base64.encodeBase64URLSafeString(enc);

        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        } catch (Exception e) {
        }

        return null;
    }

    public static String decrypt(String str) {
        if (str == null || str.trim().equals("")) {
            return null;
        }
        prepareKey();
        try {

//            byte[] dec = new sun.misc.BASE64Decoder().decodeBuffer(str);
            byte[] dec = org.apache.commons.codec.binary.Base64.decodeBase64(str);
            byte[] utf8 = dcipher.doFinal(dec);

            return new String(utf8, "UTF8");

        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        } catch (Exception e) {
        }

        return "Invalid String";
    }

    public static String decrypt(String str, String key) {
        if (str == null || str.trim().equals("")) {
            return null;
        }
        prepareKey();
        try {

//            byte[] dec = new sun.misc.BASE64Decoder().decodeBuffer(str);
            byte[] dec = org.apache.commons.codec.binary.Base64.decodeBase64(str);
            byte[] utf8 = dcipher.doFinal(dec);
            if (key != null) {
                return new String(utf8, "UTF8").replace(key, "");
            } else {
                return new String(utf8, "UTF8");
            }

        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        } catch (Exception e) {
        }

        return "Invalid String";
    }

    public static String encryptURI(String str) {
        prepareKey();
        try {
            byte[] utf8 = str.getBytes("UTF8");
            byte[] enc = ecipher.doFinal(utf8);
            return org.apache.commons.codec.binary.Base64.encodeBase64URLSafeString(enc);
        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        } catch (Exception e) {
        }

        return null;
    }

    public static String decryptURI(String str) {
        prepareKey();
        try {
            byte[] dec = org.apache.commons.codec.binary.Base64.decodeBase64(str);
            byte[] utf8 = dcipher.doFinal(dec);

            return new String(utf8, "UTF8");

        } catch (IllegalBlockSizeException e) {
        } catch (UnsupportedEncodingException e) {
        } catch (NullPointerException e) {
        } catch (Exception e) {
        }

        return "Invalid String";

    }

    public static void main(String[] args) {
        System.out.println("Pass=" + encrypt("India@1234"));
//
//        System.out.println("Pass1=" + decrypt("3ExQEQA202aFt-KyKd3zZQ"));
//
//        System.out.println("Pass1=" + decrypt("fbAo4NuXKmYe5omc8mHpUQ"));
//        System.out.println("Pass1=" + decrypt("9rPOoOLqYzxTPSLY1EHT5w"));
//        System.out.println("Pass1=" + decrypt("71zMxykMMNRHSwxhYQMnhw"));

        System.out.println("Data = "+decrypt("k7KkE1byS_6zG9-n5NceSg"));
            
    }
}
