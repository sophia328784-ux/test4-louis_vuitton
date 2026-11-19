package androidx.core.view.insets;

import android.graphics.drawable.ColorDrawable;

/* JADX INFO: loaded from: classes.dex */
public class ColorProtection extends Protection {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ColorDrawable f12286f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12287h;

    public ColorProtection(int i2, int i3) {
        this(i2);
        this.g = true;
        ColorDrawable colorDrawable = this.f12286f;
        if (this.f12287h != i3) {
            this.f12287h = i3;
            colorDrawable.setColor(i3);
            Protection.Attributes attributes = this.f12289b;
            attributes.f12295e = colorDrawable;
            Protection.Attributes.Callback callback = attributes.f12298i;
            if (callback != null) {
                callback.a(colorDrawable);
            }
        }
    }

    @Override // androidx.core.view.insets.Protection
    public final void a(int i2) {
        if (this.g || this.f12287h == i2) {
            return;
        }
        this.f12287h = i2;
        ColorDrawable colorDrawable = this.f12286f;
        colorDrawable.setColor(i2);
        Protection.Attributes attributes = this.f12289b;
        attributes.f12295e = colorDrawable;
        Protection.Attributes.Callback callback = attributes.f12298i;
        if (callback != null) {
            callback.a(colorDrawable);
        }
    }

    public final void d(int i2) {
        this.g = true;
        if (this.f12287h != i2) {
            this.f12287h = i2;
            ColorDrawable colorDrawable = this.f12286f;
            colorDrawable.setColor(i2);
            Protection.Attributes attributes = this.f12289b;
            attributes.f12295e = colorDrawable;
            Protection.Attributes.Callback callback = attributes.f12298i;
            if (callback != null) {
                callback.a(colorDrawable);
            }
        }
    }

    public ColorProtection(int i2) {
        super(i2);
        this.f12286f = new ColorDrawable();
        this.f12287h = 0;
    }
}
