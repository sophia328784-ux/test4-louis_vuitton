package androidx.emoji2.viewsintegration;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;

/* JADX INFO: loaded from: classes.dex */
public final class EmojiTextViewHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HelperInternal f13143a;

    public static class HelperInternal {
        public abstract InputFilter[] a(InputFilter[] inputFilterArr);

        public abstract boolean b();

        public abstract void c(boolean z);

        public abstract void d(boolean z);

        public abstract TransformationMethod e(TransformationMethod transformationMethod);
    }

    public static class HelperInternal19 extends HelperInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f13144a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final EmojiInputFilter f13145b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f13146c = true;

        public HelperInternal19(TextView textView) {
            this.f13144a = textView;
            this.f13145b = new EmojiInputFilter(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            if (!this.f13146c) {
                SparseArray sparseArray = new SparseArray(1);
                for (int i2 = 0; i2 < inputFilterArr.length; i2++) {
                    InputFilter inputFilter = inputFilterArr[i2];
                    if (inputFilter instanceof EmojiInputFilter) {
                        sparseArray.put(i2, inputFilter);
                    }
                }
                if (sparseArray.size() == 0) {
                    return inputFilterArr;
                }
                int length = inputFilterArr.length;
                InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
                int i3 = 0;
                for (int i4 = 0; i4 < length; i4++) {
                    if (sparseArray.indexOfKey(i4) < 0) {
                        inputFilterArr2[i3] = inputFilterArr[i4];
                        i3++;
                    }
                }
                return inputFilterArr2;
            }
            int length2 = inputFilterArr.length;
            int i5 = 0;
            while (true) {
                EmojiInputFilter emojiInputFilter = this.f13145b;
                if (i5 >= length2) {
                    InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                    System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                    inputFilterArr3[length2] = emojiInputFilter;
                    return inputFilterArr3;
                }
                if (inputFilterArr[i5] == emojiInputFilter) {
                    return inputFilterArr;
                }
                i5++;
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final boolean b() {
            return this.f13146c;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void c(boolean z) {
            if (z) {
                TextView textView = this.f13144a;
                textView.setTransformationMethod(e(textView.getTransformationMethod()));
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void d(boolean z) {
            this.f13146c = z;
            TextView textView = this.f13144a;
            textView.setTransformationMethod(e(textView.getTransformationMethod()));
            textView.setFilters(a(textView.getFilters()));
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final TransformationMethod e(TransformationMethod transformationMethod) {
            if (this.f13146c) {
                return ((transformationMethod instanceof EmojiTransformationMethod) || (transformationMethod instanceof PasswordTransformationMethod)) ? transformationMethod : new EmojiTransformationMethod(transformationMethod);
            }
            return transformationMethod instanceof EmojiTransformationMethod ? ((EmojiTransformationMethod) transformationMethod).f13151b : transformationMethod;
        }
    }

    public static class SkippingHelper19 extends HelperInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HelperInternal19 f13147a;

        public SkippingHelper19(TextView textView) {
            this.f13147a = new HelperInternal19(textView);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final InputFilter[] a(InputFilter[] inputFilterArr) {
            return !EmojiCompat.g() ? inputFilterArr : this.f13147a.a(inputFilterArr);
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final boolean b() {
            return this.f13147a.f13146c;
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void c(boolean z) {
            if (EmojiCompat.g()) {
                this.f13147a.c(z);
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final void d(boolean z) {
            boolean zG = EmojiCompat.g();
            HelperInternal19 helperInternal19 = this.f13147a;
            if (zG) {
                helperInternal19.d(z);
            } else {
                helperInternal19.f13146c = z;
            }
        }

        @Override // androidx.emoji2.viewsintegration.EmojiTextViewHelper.HelperInternal
        public final TransformationMethod e(TransformationMethod transformationMethod) {
            return !EmojiCompat.g() ? transformationMethod : this.f13147a.e(transformationMethod);
        }
    }

    public EmojiTextViewHelper(TextView textView, boolean z) {
        Preconditions.e(textView, "textView cannot be null");
        if (z) {
            this.f13143a = new HelperInternal19(textView);
        } else {
            this.f13143a = new SkippingHelper19(textView);
        }
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return this.f13143a.a(inputFilterArr);
    }

    public final boolean b() {
        return this.f13143a.b();
    }

    public final void c(boolean z) {
        this.f13143a.c(z);
    }

    public final void d(boolean z) {
        this.f13143a.d(z);
    }

    public final TransformationMethod e(TransformationMethod transformationMethod) {
        return this.f13143a.e(transformationMethod);
    }

    public EmojiTextViewHelper(TextView textView) {
        this(textView, true);
    }
}
