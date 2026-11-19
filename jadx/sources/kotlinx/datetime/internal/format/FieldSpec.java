package kotlinx.datetime.internal.format;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u0000*\u0004\b\u0001\u0010\u00022\u00020\u0003¨\u0006\u0004"}, d2 = {"Lkotlinx/datetime/internal/format/FieldSpec;", "Target", "Type", "", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface FieldSpec<Target, Type> {
    Object a();

    Accessor b();

    FieldSign c();

    String getName();
}
