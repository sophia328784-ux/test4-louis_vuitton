package com.sightcall.universal.ar;

import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public abstract class ArUnit {
    public static final ArUnit METRIC = new AnonymousClass1();
    public static final ArUnit IMPERIAL = new AnonymousClass2();
    private static final /* synthetic */ ArUnit[] $VALUES = $values();

    private static /* synthetic */ ArUnit[] $values() {
        return new ArUnit[]{METRIC, IMPERIAL};
    }

    public /* synthetic */ ArUnit(String str, int i2, int i3) {
        this(str, i2);
    }

    public static ArUnit valueOf(String str) {
        return (ArUnit) Enum.valueOf(ArUnit.class, str);
    }

    public static ArUnit[] values() {
        return (ArUnit[]) $VALUES.clone();
    }

    public abstract String format(Locale locale, double d);

    private ArUnit(String str, int i2) {
        super(str, i2);
    }

    /* JADX INFO: renamed from: com.sightcall.universal.ar.ArUnit$1, reason: invalid class name */
    public final enum AnonymousClass1 extends ArUnit {
        public /* synthetic */ AnonymousClass1() {
            this("METRIC", 0);
        }

        @Override // com.sightcall.universal.ar.ArUnit
        public String format(Locale locale, double d) {
            int iRound = (int) Math.round(d * 100.0d);
            return ((double) iRound) < 100.0d ? String.format(locale, "%d cm", Integer.valueOf(iRound)) : String.format(locale, "%.2f m", Float.valueOf(iRound / 100.0f));
        }

        private AnonymousClass1(String str, int i2) {
            super(str, i2, 0);
        }
    }

    /* JADX INFO: renamed from: com.sightcall.universal.ar.ArUnit$2, reason: invalid class name */
    public final enum AnonymousClass2 extends ArUnit {
        private static final double EIGHTH = 0.125d;
        private static final double HALF_EIGHTH = 0.0625d;

        public /* synthetic */ AnonymousClass2() {
            this("IMPERIAL", 1);
        }

        private String fraction(double d) {
            if (d >= 0.9375d) {
                return null;
            }
            if (d >= 0.8125d) {
                return "⅞";
            }
            if (d >= 0.6875d) {
                return "¾";
            }
            if (d >= 0.5625d) {
                return "⅝";
            }
            if (d >= 0.4375d) {
                return "½";
            }
            if (d >= 0.3125d) {
                return "⅜";
            }
            if (d >= 0.1875d) {
                return "¼";
            }
            if (d >= HALF_EIGHTH) {
                return "⅛";
            }
            return null;
        }

        private boolean shouldRoundUp(double d) {
            return d >= 0.9375d;
        }

        @Override // com.sightcall.universal.ar.ArUnit
        public String format(Locale locale, double d) {
            double d2 = d / 0.3048d;
            int i2 = (int) d2;
            double d3 = (d2 - ((double) i2)) / 0.08333d;
            int i3 = (int) d3;
            double d4 = d3 - ((double) i3);
            if (shouldRoundUp(d4)) {
                if (i3 == 11) {
                    i2++;
                }
                i3 = (i3 + 1) % 12;
            }
            int iMax = Math.max(0, i2);
            int iMax2 = Math.max(0, i3);
            String strFraction = fraction(d4);
            if (iMax == 0) {
                if (iMax2 == 0) {
                    return strFraction == null ? String.format(locale, "%d″", 0) : strFraction.concat("″");
                }
                return strFraction == null ? String.format(locale, "%d″", Integer.valueOf(iMax2)) : String.format(locale, "%d %s″", Integer.valueOf(iMax2), strFraction);
            }
            if (iMax2 == 0) {
                return strFraction == null ? String.format(locale, "%d′", Integer.valueOf(iMax)) : String.format(locale, "%d′ %s″", Integer.valueOf(iMax), strFraction);
            }
            return strFraction == null ? String.format(locale, "%d′ %d″", Integer.valueOf(iMax), Integer.valueOf(iMax2)) : String.format(locale, "%d′ %d %s″", Integer.valueOf(iMax), Integer.valueOf(iMax2), strFraction);
        }

        private AnonymousClass2(String str, int i2) {
            super(str, i2, 0);
        }
    }
}
