package kotlin.io;

import defpackage.b21;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.Sequence;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlin/io/LinesSequence;", "Lkotlin/sequences/Sequence;", "", "Ljava/io/BufferedReader;", "reader", "<init>", "(Ljava/io/BufferedReader;)V", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class LinesSequence implements Sequence<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BufferedReader f71887a;

    /* JADX INFO: renamed from: kotlin.io.LinesSequence$iterator$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"kotlin/io/LinesSequence$iterator$1", "", "", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class AnonymousClass1 implements Iterator<String>, KMappedMarker {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f71888b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f71889c;

        public AnonymousClass1() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() throws IOException {
            if (this.f71888b == null && !this.f71889c) {
                String line = LinesSequence.this.f71887a.readLine();
                this.f71888b = line;
                if (line == null) {
                    this.f71889c = true;
                }
            }
            return this.f71888b != null;
        }

        @Override // java.util.Iterator
        public final String next() {
            if (!hasNext()) {
                b21.x();
                return null;
            }
            String str = this.f71888b;
            this.f71888b = null;
            str.getClass();
            return str;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public LinesSequence(BufferedReader bufferedReader) {
        bufferedReader.getClass();
        this.f71887a = bufferedReader;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new AnonymousClass1();
    }
}
