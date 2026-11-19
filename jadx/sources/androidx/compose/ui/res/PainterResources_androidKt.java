package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.md;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PainterResources_androidKt {
    public static final Painter a(int i2, Composer composer, int i3) {
        TypedValue typedValue;
        boolean z;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        Resources resources = (Resources) composer.k(AndroidCompositionLocals_androidKt.f9937c);
        ResourceIdCache resourceIdCache = (ResourceIdCache) composer.k(AndroidCompositionLocals_androidKt.f9938e);
        synchronized (resourceIdCache) {
            typedValue = (TypedValue) resourceIdCache.f10235a.b(i2);
            z = true;
            if (typedValue == null) {
                typedValue = new TypedValue();
                resources.getValue(i2, typedValue, true);
                MutableIntObjectMap mutableIntObjectMap = resourceIdCache.f10235a;
                int iD = mutableIntObjectMap.d(i2);
                Object[] objArr = mutableIntObjectMap.f3260c;
                Object obj = objArr[iD];
                mutableIntObjectMap.f3259b[iD] = i2;
                objArr[iD] = typedValue;
            }
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence == null || !StringsKt.r(charSequence, ".xml")) {
            composer.L(-1771643000);
            Object theme = context.getTheme();
            boolean zK = composer.K(charSequence);
            if ((((i3 & 14) ^ 6) <= 4 || !composer.d(i2)) && (i3 & 6) != 4) {
                z = false;
            }
            boolean zK2 = zK | z | composer.K(theme);
            Object objX = composer.x();
            if (zK2 || objX == Composer.Companion.f7939a) {
                try {
                    Drawable drawable = resources.getDrawable(i2, null);
                    drawable.getClass();
                    objX = new AndroidImageBitmap(((BitmapDrawable) drawable).getBitmap());
                    composer.q(objX);
                } catch (Exception e2) {
                    throw new ResourceResolutionException("Error attempting to load resource: " + ((Object) charSequence), e2);
                }
            }
            BitmapPainter bitmapPainter = new BitmapPainter((ImageBitmap) objX, 0L, 0L, 6, null);
            composer.F();
            return bitmapPainter;
        }
        composer.L(-1771798434);
        Resources.Theme theme2 = context.getTheme();
        int i4 = typedValue.changingConfigurations;
        ImageVectorCache imageVectorCache = (ImageVectorCache) composer.k(AndroidCompositionLocals_androidKt.d);
        ImageVectorCache.Key key = new ImageVectorCache.Key(theme2, i2);
        WeakReference weakReference = (WeakReference) imageVectorCache.f10230a.get(key);
        ImageVectorCache.ImageVectorEntry imageVectorEntryA = weakReference != null ? (ImageVectorCache.ImageVectorEntry) weakReference.get() : null;
        if (imageVectorEntryA == null) {
            XmlResourceParser xml = resources.getXml(i2);
            int next = xml.next();
            while (next != 2 && next != 1) {
                next = xml.next();
            }
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            if (!Intrinsics.c(xml.getName(), "vector")) {
                md.n("Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP");
                return null;
            }
            imageVectorEntryA = VectorResources_androidKt.a(theme2, resources, xml, i4);
            imageVectorCache.f10230a.put(key, new WeakReference(imageVectorEntryA));
        }
        VectorPainter vectorPainterB = VectorPainterKt.b(imageVectorEntryA.f10231a, composer);
        composer.F();
        return vectorPainterB;
    }
}
