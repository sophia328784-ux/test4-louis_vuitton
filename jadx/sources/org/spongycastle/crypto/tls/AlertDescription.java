package org.spongycastle.crypto.tls;

import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes5.dex */
public class AlertDescription {
    public static String a(short s) {
        String str;
        StringBuilder sb = new StringBuilder();
        if (s == 0) {
            str = "close_notify";
        } else if (s == 10) {
            str = "unexpected_message";
        } else if (s == 30) {
            str = "decompression_failure";
        } else if (s == 60) {
            str = "export_restriction";
        } else if (s == 80) {
            str = "internal_error";
        } else if (s == 86) {
            str = "inappropriate_fallback";
        } else if (s == 90) {
            str = "user_canceled";
        } else if (s == 100) {
            str = "no_renegotiation";
        } else if (s == 70) {
            str = "protocol_version";
        } else if (s != 71) {
            switch (s) {
                case 20:
                    str = "bad_record_mac";
                    break;
                case 21:
                    str = "decryption_failed";
                    break;
                case 22:
                    str = "record_overflow";
                    break;
                default:
                    switch (s) {
                        case 40:
                            str = "handshake_failure";
                            break;
                        case 41:
                            str = "no_certificate";
                            break;
                        case EACTags.CURRENCY_CODE /* 42 */:
                            str = "bad_certificate";
                            break;
                        case EACTags.DATE_OF_BIRTH /* 43 */:
                            str = "unsupported_certificate";
                            break;
                        case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                            str = "certificate_revoked";
                            break;
                        case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                            str = "certificate_expired";
                            break;
                        case 46:
                            str = "certificate_unknown";
                            break;
                        case EACTags.PIN_USAGE_POLICY /* 47 */:
                            str = "illegal_parameter";
                            break;
                        case 48:
                            str = "unknown_ca";
                            break;
                        case 49:
                            str = "access_denied";
                            break;
                        case 50:
                            str = "decode_error";
                            break;
                        case EACTags.TRANSACTION_DATE /* 51 */:
                            str = "decrypt_error";
                            break;
                        default:
                            switch (s) {
                                case 110:
                                    str = "unsupported_extension";
                                    break;
                                case 111:
                                    str = "certificate_unobtainable";
                                    break;
                                case 112:
                                    str = "unrecognized_name";
                                    break;
                                case 113:
                                    str = "bad_certificate_status_response";
                                    break;
                                case 114:
                                    str = "bad_certificate_hash_value";
                                    break;
                                case 115:
                                    str = "unknown_psk_identity";
                                    break;
                                default:
                                    str = "UNKNOWN";
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            str = "insufficient_security";
        }
        sb.append(str);
        sb.append("(");
        sb.append((int) s);
        sb.append(")");
        return sb.toString();
    }
}
