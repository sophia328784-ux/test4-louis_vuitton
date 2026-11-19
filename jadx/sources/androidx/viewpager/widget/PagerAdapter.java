package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.os.Parcelable;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataSetObservable f20127a = new DataSetObservable();

    public void a(int i2, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public void b() {
    }

    public CharSequence c(int i2) {
        return null;
    }

    public Object d(ViewPager viewPager, int i2) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public abstract boolean e(View view, Object obj);

    public void f(Parcelable parcelable, ClassLoader classLoader) {
    }

    public Parcelable g() {
        return null;
    }

    public void h(Object obj) {
    }

    public void i(ViewPager viewPager) {
    }
}
