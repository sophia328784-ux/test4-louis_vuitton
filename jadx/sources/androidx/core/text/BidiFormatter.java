package androidx.core.text;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class BidiFormatter {
    public static final TextDirectionHeuristicCompat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f12116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f12117f;
    public static final BidiFormatter g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BidiFormatter f12118h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f12119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextDirectionHeuristicCompat f12121c;

    public static class DirectionalityEstimator {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final byte[] f12125e = new byte[1792];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final CharSequence f12126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12127b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f12128c;
        public char d;

        static {
            for (int i2 = 0; i2 < 1792; i2++) {
                f12125e[i2] = Character.getDirectionality(i2);
            }
        }

        public DirectionalityEstimator(CharSequence charSequence) {
            this.f12126a = charSequence;
            this.f12127b = charSequence.length();
        }

        public final byte a() {
            int i2 = this.f12128c - 1;
            CharSequence charSequence = this.f12126a;
            char cCharAt = charSequence.charAt(i2);
            this.d = cCharAt;
            boolean zIsLowSurrogate = Character.isLowSurrogate(cCharAt);
            int i3 = this.f12128c;
            if (zIsLowSurrogate) {
                int iCodePointBefore = Character.codePointBefore(charSequence, i3);
                this.f12128c -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.f12128c = i3 - 1;
            char c2 = this.d;
            return c2 < 1792 ? f12125e[c2] : Character.getDirectionality(c2);
        }
    }

    static {
        TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.f12134c;
        d = textDirectionHeuristicCompat;
        f12116e = Character.toString((char) 8206);
        f12117f = Character.toString((char) 8207);
        g = new BidiFormatter(false, 2, textDirectionHeuristicCompat);
        f12118h = new BidiFormatter(true, 2, textDirectionHeuristicCompat);
    }

    public BidiFormatter(boolean z, int i2, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        this.f12119a = z;
        this.f12120b = i2;
        this.f12121c = textDirectionHeuristicCompat;
    }

    public static int a(CharSequence charSequence) {
        byte directionality;
        DirectionalityEstimator directionalityEstimator = new DirectionalityEstimator(charSequence);
        directionalityEstimator.f12128c = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = directionalityEstimator.f12128c;
            if (i5 < directionalityEstimator.f12127b && i2 == 0) {
                CharSequence charSequence2 = directionalityEstimator.f12126a;
                char cCharAt = charSequence2.charAt(i5);
                directionalityEstimator.d = cCharAt;
                boolean zIsHighSurrogate = Character.isHighSurrogate(cCharAt);
                int i6 = directionalityEstimator.f12128c;
                if (zIsHighSurrogate) {
                    int iCodePointAt = Character.codePointAt(charSequence2, i6);
                    directionalityEstimator.f12128c = Character.charCount(iCodePointAt) + directionalityEstimator.f12128c;
                    directionality = Character.getDirectionality(iCodePointAt);
                } else {
                    directionalityEstimator.f12128c = i6 + 1;
                    char c2 = directionalityEstimator.d;
                    directionality = c2 < 1792 ? DirectionalityEstimator.f12125e[c2] : Character.getDirectionality(c2);
                }
                if (directionality != 0) {
                    if (directionality == 1 || directionality == 2) {
                        if (i4 == 0) {
                            return 1;
                        }
                    } else if (directionality != 9) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                i4++;
                                i3 = -1;
                                continue;
                            case 16:
                            case 17:
                                i4++;
                                i3 = 1;
                                continue;
                            case 18:
                                i4--;
                                i3 = 0;
                                continue;
                        }
                    }
                } else if (i4 == 0) {
                    return -1;
                }
                i2 = i4;
            }
        }
        if (i2 != 0) {
            if (i3 == 0) {
                while (directionalityEstimator.f12128c > 0) {
                    switch (directionalityEstimator.a()) {
                        case 14:
                        case 15:
                            if (i2 == i4) {
                                return -1;
                            }
                            i4--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i4) {
                                return 1;
                            }
                            i4--;
                            break;
                        case 18:
                            i4++;
                            break;
                        default:
                            break;
                    }
                }
            } else {
                return i3;
            }
        }
        return 0;
    }

    public static int b(CharSequence charSequence) {
        DirectionalityEstimator directionalityEstimator = new DirectionalityEstimator(charSequence);
        directionalityEstimator.f12128c = directionalityEstimator.f12127b;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            while (directionalityEstimator.f12128c > 0) {
                byte bA = directionalityEstimator.a();
                if (bA == 0) {
                    if (i2 == 0) {
                        return -1;
                    }
                    if (i3 == 0) {
                    }
                } else if (bA == 1 || bA == 2) {
                    if (i2 == 0) {
                        return 1;
                    }
                    if (i3 == 0) {
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i3 == i2) {
                                return -1;
                            }
                            i2--;
                            break;
                        case 16:
                        case 17:
                            if (i3 == i2) {
                                return 1;
                            }
                            i2--;
                            break;
                        case 18:
                            i2++;
                            break;
                        default:
                            if (i3 != 0) {
                            }
                            break;
                    }
                } else {
                    continue;
                }
            }
            return 0;
        }
    }

    public static BidiFormatter c() {
        Builder builder = new Builder();
        int i2 = builder.f12123b;
        if (i2 == 2 && builder.f12124c == d) {
            return builder.f12122a ? f12118h : g;
        }
        return new BidiFormatter(builder.f12122a, i2, builder.f12124c);
    }

    public final SpannableStringBuilder d(CharSequence charSequence, TextDirectionHeuristicCompat textDirectionHeuristicCompat) {
        String str;
        if (charSequence == null) {
            return null;
        }
        boolean zA = textDirectionHeuristicCompat.a(charSequence, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i2 = this.f12120b & 2;
        String str2 = "";
        String str3 = f12117f;
        String str4 = f12116e;
        boolean z = this.f12119a;
        if (i2 != 0) {
            boolean zA2 = ((TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl) (zA ? TextDirectionHeuristicsCompat.f12133b : TextDirectionHeuristicsCompat.f12132a)).a(charSequence, charSequence.length());
            if (z || !(zA2 || a(charSequence) == 1)) {
                str = (!z || (zA2 && a(charSequence) != -1)) ? "" : str3;
            } else {
                str = str4;
            }
            spannableStringBuilder.append((CharSequence) str);
        }
        if (zA != z) {
            spannableStringBuilder.append(zA ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        boolean zA3 = ((TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl) (zA ? TextDirectionHeuristicsCompat.f12133b : TextDirectionHeuristicsCompat.f12132a)).a(charSequence, charSequence.length());
        if (!z && (zA3 || b(charSequence) == 1)) {
            str2 = str4;
        } else if (z && (!zA3 || b(charSequence) == -1)) {
            str2 = str3;
        }
        spannableStringBuilder.append((CharSequence) str2);
        return spannableStringBuilder;
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f12122a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f12123b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TextDirectionHeuristicCompat f12124c;

        public Builder() {
            Locale locale = Locale.getDefault();
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = BidiFormatter.d;
            this.f12122a = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
            this.f12124c = BidiFormatter.d;
            this.f12123b = 2;
        }

        public Builder(boolean z) {
            this.f12122a = z;
            this.f12124c = BidiFormatter.d;
            this.f12123b = 2;
        }

        public Builder(Locale locale) {
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = BidiFormatter.d;
            this.f12122a = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
            this.f12124c = BidiFormatter.d;
            this.f12123b = 2;
        }
    }
}
