package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.TypefaceResult;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AndroidParagraphIntrinsics f10909b;

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.f10909b;
        TypefaceResult typefaceResultA = androidParagraphIntrinsics.f10880e.a((FontFamily) obj, (FontWeight) obj2, ((FontStyle) obj3).f10717a, ((FontSynthesis) obj4).f10721a);
        if (typefaceResultA instanceof TypefaceResult.Immutable) {
            Object obj5 = ((TypefaceResult.Immutable) typefaceResultA).f10755b;
            obj5.getClass();
            return (Typeface) obj5;
        }
        TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = new TypefaceDirtyTrackerLinkedList(typefaceResultA, androidParagraphIntrinsics.f10884j);
        androidParagraphIntrinsics.f10884j = typefaceDirtyTrackerLinkedList;
        Object obj6 = typefaceDirtyTrackerLinkedList.f10905c;
        obj6.getClass();
        return (Typeface) obj6;
    }
}
