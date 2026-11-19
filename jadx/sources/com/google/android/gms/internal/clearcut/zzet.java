package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzet {
    public static String a(zzbb zzbbVar) {
        String str;
        StringBuilder sb = new StringBuilder(zzbbVar.size());
        for (int i2 = 0; i2 < zzbbVar.size(); i2++) {
            int iB = zzbbVar.b(i2);
            if (iB == 34) {
                str = "\\\"";
            } else if (iB == 39) {
                str = "\\'";
            } else if (iB != 92) {
                switch (iB) {
                    case 7:
                        str = "\\a";
                        break;
                    case 8:
                        str = "\\b";
                        break;
                    case 9:
                        str = "\\t";
                        break;
                    case 10:
                        str = "\\n";
                        break;
                    case 11:
                        str = "\\v";
                        break;
                    case 12:
                        str = "\\f";
                        break;
                    case 13:
                        str = "\\r";
                        break;
                    default:
                        if (iB < 32 || iB > 126) {
                            sb.append('\\');
                            sb.append((char) (((iB >>> 6) & 3) + 48));
                            sb.append((char) (((iB >>> 3) & 7) + 48));
                            iB = (iB & 7) + 48;
                        }
                        sb.append((char) iB);
                        continue;
                        break;
                }
            } else {
                str = "\\\\";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
