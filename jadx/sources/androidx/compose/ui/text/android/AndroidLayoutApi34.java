package androidx.compose.ui.text.android;

import android.graphics.RectF;
import android.text.GraphemeClusterSegmentFinder;
import android.text.Layout;
import android.text.SegmentFinder;
import androidx.compose.ui.text.android.selection.WordSegmentFinder;
import defpackage.c;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/android/AndroidLayoutApi34;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidLayoutApi34 {
    public static int[] a(TextLayout textLayout, RectF rectF, int i2, final c cVar) {
        SegmentFinder graphemeClusterSegmentFinder;
        if (i2 == 1) {
            final WordSegmentFinder wordSegmentFinder = new WordSegmentFinder(textLayout.g.getText(), textLayout.k());
            graphemeClusterSegmentFinder = new SegmentFinder() { // from class: androidx.compose.ui.text.android.selection.Api34SegmentFinder$toAndroidSegmentFinder$1
                public final int nextEndBoundary(int i3) {
                    return wordSegmentFinder.c(i3);
                }

                public final int nextStartBoundary(int i3) {
                    return wordSegmentFinder.a(i3);
                }

                public final int previousEndBoundary(int i3) {
                    return wordSegmentFinder.d(i3);
                }

                public final int previousStartBoundary(int i3) {
                    return wordSegmentFinder.b(i3);
                }
            };
        } else {
            graphemeClusterSegmentFinder = new GraphemeClusterSegmentFinder(textLayout.g.getText(), textLayout.f10609a);
        }
        return textLayout.g.getRangeForRect(rectF, graphemeClusterSegmentFinder, new Layout.TextInclusionStrategy() { // from class: t5
            @Override // android.text.Layout.TextInclusionStrategy
            public final boolean isSegmentInside(RectF rectF2, RectF rectF3) {
                return ((Boolean) cVar.invoke(rectF2, rectF3)).booleanValue();
            }
        });
    }
}
