package kotlinx.serialization.json.internal;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerForUnquotedLiterals;", "Lkotlinx/serialization/json/internal/Composer;", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "writer", "", "forceQuoting", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Z)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposerForUnquotedLiterals extends Composer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f75779c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerForUnquotedLiterals(InternalJsonWriter internalJsonWriter, boolean z) {
        super(internalJsonWriter);
        internalJsonWriter.getClass();
        this.f75779c = z;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void j(String str) {
        str.getClass();
        boolean z = this.f75779c;
        InternalJsonWriter internalJsonWriter = this.f75777a;
        if (z) {
            internalJsonWriter.b(str);
        } else {
            internalJsonWriter.c(str);
        }
    }
}
