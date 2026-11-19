package kotlinx.serialization.json.internal;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@JsonFriendModuleApi
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bg\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lkotlinx/serialization/json/internal/InternalJsonWriter;", "", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface InternalJsonWriter {
    void a(char c2);

    void b(String str);

    void c(String str);

    void writeLong(long j2);
}
