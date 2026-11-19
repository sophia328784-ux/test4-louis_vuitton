package androidx.core.text;

import defpackage.ct0;

/* JADX INFO: loaded from: classes.dex */
public abstract class TextDirectionHeuristicsCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TextDirectionHeuristicCompat f12132a = new TextDirectionHeuristicInternal(null, false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TextDirectionHeuristicCompat f12133b = new TextDirectionHeuristicInternal(null, true);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TextDirectionHeuristicCompat f12134c;
    public static final TextDirectionHeuristicCompat d;

    public static class FirstStrong implements TextDirectionAlgorithm {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final FirstStrong f12135a = new FirstStrong();

        /* JADX WARN: Code duplicated, block: B:12:0x0020  */
        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public final int a(CharSequence charSequence, int i2) {
            int i3 = 0;
            i3 = 2;
            for (int i4 = 0; i4 < i2 && i3 == 2; i4++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i4));
                TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.f12132a;
                if (directionality == 0) {
                    i3 = 1;
                    continue;
                } else if (directionality != 1 && directionality != 2) {
                    switch (directionality) {
                        case 14:
                        case 15:
                            i3 = 1;
                            continue;
                        case 16:
                        case 17:
                            break;
                        default:
                            i3 = 2;
                            continue;
                    }
                }
            }
            return i3;
        }
    }

    public interface TextDirectionAlgorithm {
        int a(CharSequence charSequence, int i2);
    }

    public static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextDirectionAlgorithm f12136a;

        public TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.f12136a = textDirectionAlgorithm;
        }

        @Override // androidx.core.text.TextDirectionHeuristicCompat
        public final boolean a(CharSequence charSequence, int i2) {
            if (charSequence == null || i2 < 0 || charSequence.length() - i2 < 0) {
                ct0.c();
                return false;
            }
            TextDirectionAlgorithm textDirectionAlgorithm = this.f12136a;
            if (textDirectionAlgorithm == null) {
                return b();
            }
            int iA = textDirectionAlgorithm.a(charSequence, i2);
            if (iA == 0) {
                return true;
            }
            if (iA != 1) {
                return b();
            }
            return false;
        }

        public abstract boolean b();
    }

    public static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f12137b;

        public TextDirectionHeuristicInternal(FirstStrong firstStrong, boolean z) {
            super(firstStrong);
            this.f12137b = z;
        }

        @Override // androidx.core.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        public final boolean b() {
            return this.f12137b;
        }
    }

    static {
        FirstStrong firstStrong = FirstStrong.f12135a;
        f12134c = new TextDirectionHeuristicInternal(firstStrong, false);
        d = new TextDirectionHeuristicInternal(firstStrong, true);
    }
}
