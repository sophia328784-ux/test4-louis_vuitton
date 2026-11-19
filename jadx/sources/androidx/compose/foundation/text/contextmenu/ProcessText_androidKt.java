package androidx.compose.foundation.text.contextmenu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.ProcessTextKey;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.ui.text.TextRange;
import defpackage.j90;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ProcessText_androidKt {
    public static final void a(TextContextMenuBuilderScope textContextMenuBuilderScope, Context context, boolean z, String str, long j2) {
        if (TextRange.c(j2) || str.length() == 0) {
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        List list = (List) ProcessTextApi23Impl.f6061a.invoke(context);
        if (list.isEmpty()) {
            return;
        }
        MutableObjectList mutableObjectList = textContextMenuBuilderScope.f6062a;
        MutableObjectList mutableObjectList2 = textContextMenuBuilderScope.f6062a;
        mutableObjectList.g(TextContextMenuSeparator.f6075b);
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ResolveInfo resolveInfo = (ResolveInfo) list.get(i2);
            mutableObjectList2.g(new TextContextMenuItem(new ProcessTextKey(i2), resolveInfo.loadLabel(packageManager).toString(), 0, new j90(context, resolveInfo, z, str, j2)));
        }
        mutableObjectList2.g(TextContextMenuSeparator.f6075b);
    }
}
