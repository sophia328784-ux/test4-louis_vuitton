package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.v40;
import defpackage.x1;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        AnnotationType annotationType;
        Object objA;
        SaverScope saverScope = (SaverScope) obj;
        AnnotatedString.Range range = (AnnotatedString.Range) obj2;
        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
        Object obj3 = range.f10428a;
        if (obj3 instanceof ParagraphStyle) {
            annotationType = AnnotationType.Paragraph;
        } else if (obj3 instanceof SpanStyle) {
            annotationType = AnnotationType.Span;
        } else if (obj3 instanceof VerbatimTtsAnnotation) {
            annotationType = AnnotationType.VerbatimTts;
        } else if (obj3 instanceof UrlAnnotation) {
            annotationType = AnnotationType.Url;
        } else if (obj3 instanceof LinkAnnotation.Url) {
            annotationType = AnnotationType.Link;
        } else if (obj3 instanceof LinkAnnotation.Clickable) {
            annotationType = AnnotationType.Clickable;
        } else {
            if (!(obj3 instanceof StringAnnotation)) {
                x1.i();
                return null;
            }
            annotationType = AnnotationType.String;
        }
        switch (SaversKt.WhenMappings.f10517a[annotationType.ordinal()]) {
            case 1:
                obj3.getClass();
                objA = SaversKt.a((ParagraphStyle) obj3, SaversKt.f10509h, saverScope);
                break;
            case 2:
                obj3.getClass();
                objA = SaversKt.a((SpanStyle) obj3, SaversKt.f10510i, saverScope);
                break;
            case 3:
                obj3.getClass();
                objA = SaversKt.a((VerbatimTtsAnnotation) obj3, SaversKt.d, saverScope);
                break;
            case 4:
                obj3.getClass();
                objA = SaversKt.a((UrlAnnotation) obj3, SaversKt.f10507e, saverScope);
                break;
            case 5:
                obj3.getClass();
                objA = SaversKt.a((LinkAnnotation.Url) obj3, SaversKt.f10508f, saverScope);
                break;
            case 6:
                obj3.getClass();
                objA = SaversKt.a((LinkAnnotation.Clickable) obj3, SaversKt.g, saverScope);
                break;
            case 7:
                obj3.getClass();
                objA = ((StringAnnotation) obj3).f10534a;
                break;
            default:
                v40.g();
                return null;
        }
        return CollectionsKt.l(annotationType, objA, Integer.valueOf(range.f10429b), Integer.valueOf(range.f10430c), range.d);
    }
}
