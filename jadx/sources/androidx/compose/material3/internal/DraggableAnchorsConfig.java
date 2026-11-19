package androidx.compose.material3.internal;

import androidx.compose.material3.SheetValue;
import java.util.LinkedHashMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/material3/internal/DraggableAnchorsConfig;", "T", "", "<init>", "()V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DraggableAnchorsConfig<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f7602a = new LinkedHashMap();

    public final void a(SheetValue sheetValue, float f2) {
        this.f7602a.put(sheetValue, Float.valueOf(f2));
    }
}
