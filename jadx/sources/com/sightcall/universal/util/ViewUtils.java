package com.sightcall.universal.util;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;

/* JADX INFO: loaded from: classes3.dex */
public class ViewUtils {
    public static boolean isHit(View view, int i2, int i3, Rect rect, int[] iArr) {
        if (view.getVisibility() != 0) {
            return false;
        }
        view.getDrawingRect(rect);
        view.getLocationOnScreen(iArr);
        rect.offset(iArr[0], iArr[1]);
        return rect.contains(i2, i3);
    }

    public static String whoami(View view) {
        String resourcePackageName;
        int id = view.getId();
        StringBuilder sb = new StringBuilder();
        if (id != -1) {
            Resources resources = view.getResources();
            int i2 = (-16777216) & id;
            if (i2 == 16777216) {
                resourcePackageName = ReferenceApiV3ConstKt.OS_NAME;
            } else if (i2 != 2130706432) {
                try {
                    resourcePackageName = resources.getResourcePackageName(id);
                } catch (Resources.NotFoundException unused) {
                }
            } else {
                resourcePackageName = Payload.TYPE_APP;
            }
            String resourceTypeName = resources.getResourceTypeName(id);
            String resourceEntryName = resources.getResourceEntryName(id);
            sb.append(resourcePackageName);
            sb.append(":");
            sb.append(resourceTypeName);
            sb.append("/");
            sb.append(resourceEntryName);
            return sb.toString();
        }
        return view.getClass().getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(view.hashCode());
    }
}
