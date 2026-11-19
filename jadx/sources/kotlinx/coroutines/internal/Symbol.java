package kotlinx.coroutines.internal;

import defpackage.fc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/internal/Symbol;", "", "", "symbol", "<init>", "(Ljava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class Symbol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75139a;

    public Symbol(String str) {
        this.f75139a = str;
    }

    public final String toString() {
        return fc.l(new StringBuilder("<"), this.f75139a, '>');
    }
}
