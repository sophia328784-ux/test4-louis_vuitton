package androidx.media3.extractor.metadata.emsg;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class EventMessageEncoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteArrayOutputStream f16343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataOutputStream f16344b;

    public EventMessageEncoder() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f16343a = byteArrayOutputStream;
        this.f16344b = new DataOutputStream(byteArrayOutputStream);
    }
}
