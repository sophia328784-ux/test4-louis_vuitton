package com.sightcall.advancedannotations.domain.drawer.annotation;

import android.graphics.drawable.PictureDrawable;
import com.caverock.androidsvg.SVG;
import com.sightcall.advancedannotations.domain.drawer.AnnotationColor;
import com.sightcall.advancedannotations.domain.drawer.AnnotationCommandKt;
import com.sightcall.advancedannotations.domain.settings.Setting;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0014\u0010\u0007\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\f\u0010\b\u001a\u00020\t*\u00020\u0001H\u0002¨\u0006\n"}, d2 = {"addSVGTags", "", "setting", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "replaceColor", "color", "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;", "replaceStroke", "toDrawable", "Landroid/graphics/drawable/PictureDrawable;", "advancedannotations_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ResourceAnnotationKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final String addSVGTags(String str, Setting setting) {
        return n00.r(str, "</svg>", fc.p(setting.getWidth(), setting.getHeight(), "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"", "\" height=\"", "\" version=\"1.1\">\n"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String replaceColor(String str, AnnotationColor annotationColor) {
        return StringsKt.J(str, "#COLOR", "#" + annotationColor.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String replaceStroke(String str, AnnotationColor annotationColor) {
        return StringsKt.J(str, "#STROKE", "#" + AnnotationCommandKt.getStroke(annotationColor).getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PictureDrawable toDrawable(String str) {
        return new PictureDrawable(SVG.b(str).c());
    }
}
