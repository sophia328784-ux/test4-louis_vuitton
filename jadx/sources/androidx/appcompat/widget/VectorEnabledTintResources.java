package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.InputStream;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class VectorEnabledTintResources extends ResourcesWrapper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1344c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final WeakReference f1345b;

    public VectorEnabledTintResources(Context context, Resources resources) {
        super(resources);
        this.f1345b = new WeakReference(context);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final XmlResourceParser getAnimation(int i2) {
        return this.f1260a.getAnimation(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final boolean getBoolean(int i2) {
        return this.f1260a.getBoolean(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final int getColor(int i2) {
        return this.f1260a.getColor(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final ColorStateList getColorStateList(int i2) {
        return this.f1260a.getColorStateList(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final Configuration getConfiguration() {
        return this.f1260a.getConfiguration();
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final float getDimension(int i2) {
        return this.f1260a.getDimension(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final int getDimensionPixelOffset(int i2) {
        return this.f1260a.getDimensionPixelOffset(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final int getDimensionPixelSize(int i2) {
        return this.f1260a.getDimensionPixelSize(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final DisplayMetrics getDisplayMetrics() {
        return this.f1260a.getDisplayMetrics();
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final Drawable getDrawable(int i2) {
        Context context = (Context) this.f1345b.get();
        if (context == null) {
            return a(i2);
        }
        ResourceManagerInternal resourceManagerInternalC = ResourceManagerInternal.c();
        synchronized (resourceManagerInternalC) {
            Drawable drawableA = a(i2);
            if (drawableA == null) {
                return null;
            }
            return resourceManagerInternalC.h(context, i2, false, drawableA);
        }
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final float getFraction(int i2, int i3, int i4) {
        return this.f1260a.getFraction(i2, i3, i4);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final int getIdentifier(String str, String str2, String str3) {
        return this.f1260a.getIdentifier(str, str2, str3);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final int[] getIntArray(int i2) {
        return this.f1260a.getIntArray(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final int getInteger(int i2) {
        return this.f1260a.getInteger(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final XmlResourceParser getLayout(int i2) {
        return this.f1260a.getLayout(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final Movie getMovie(int i2) {
        return this.f1260a.getMovie(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getQuantityString(int i2, int i3, Object[] objArr) {
        return this.f1260a.getQuantityString(i2, i3, objArr);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final CharSequence getQuantityText(int i2, int i3) {
        return this.f1260a.getQuantityText(i2, i3);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getResourceEntryName(int i2) {
        return this.f1260a.getResourceEntryName(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getResourceName(int i2) {
        return this.f1260a.getResourceName(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getResourcePackageName(int i2) {
        return this.f1260a.getResourcePackageName(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getResourceTypeName(int i2) {
        return this.f1260a.getResourceTypeName(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getString(int i2) {
        return this.f1260a.getString(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String[] getStringArray(int i2) {
        return this.f1260a.getStringArray(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final CharSequence getText(int i2) {
        return this.f1260a.getText(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final CharSequence[] getTextArray(int i2) {
        return this.f1260a.getTextArray(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final XmlResourceParser getXml(int i2) {
        return this.f1260a.getXml(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        return this.f1260a.obtainAttributes(attributeSet, iArr);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final TypedArray obtainTypedArray(int i2) {
        return this.f1260a.obtainTypedArray(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final InputStream openRawResource(int i2) {
        return this.f1260a.openRawResource(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final AssetFileDescriptor openRawResourceFd(int i2) {
        return this.f1260a.openRawResourceFd(i2);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getQuantityString(int i2, int i3) {
        return this.f1260a.getQuantityString(i2, i3);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final String getString(int i2, Object[] objArr) {
        return this.f1260a.getString(i2, objArr);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final CharSequence getText(int i2, CharSequence charSequence) {
        return this.f1260a.getText(i2, charSequence);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public final InputStream openRawResource(int i2, TypedValue typedValue) {
        return this.f1260a.openRawResource(i2, typedValue);
    }
}
