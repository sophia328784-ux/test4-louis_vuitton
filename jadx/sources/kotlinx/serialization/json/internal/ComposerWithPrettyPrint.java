package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;", "Lkotlinx/serialization/json/internal/Composer;", "Lkotlinx/serialization/json/internal/InternalJsonWriter;", "writer", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/json/Json;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComposerWithPrettyPrint extends Composer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Json f75781c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerWithPrettyPrint(InternalJsonWriter internalJsonWriter, Json json) {
        super(internalJsonWriter);
        internalJsonWriter.getClass();
        json.getClass();
        this.f75781c = json;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void a() {
        this.f75778b = true;
        this.d++;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void b() {
        this.f75778b = false;
        this.f75777a.c("\n");
        int i2 = this.d;
        for (int i3 = 0; i3 < i2; i3++) {
            h(this.f75781c.f75716a.g);
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void c() {
        if (this.f75778b) {
            this.f75778b = false;
        } else {
            b();
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void k() {
        e(' ');
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public final void l() {
        this.d--;
    }
}
