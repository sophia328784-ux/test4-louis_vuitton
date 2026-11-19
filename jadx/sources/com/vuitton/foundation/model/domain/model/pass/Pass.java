package com.vuitton.foundation.model.domain.model.pass;

import java.io.InputStream;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/pass/Pass;", "", "Speedy", "Normal", "Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;", "Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface Pass {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/pass/Pass$Normal;", "Lcom/vuitton/foundation/model/domain/model/pass/Pass;", "Ljava/io/InputStream;", "imageBinary", "<init>", "(Ljava/io/InputStream;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Normal implements Pass {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStream f67786a;

        public Normal(InputStream inputStream) {
            inputStream.getClass();
            this.f67786a = inputStream;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Normal) && Intrinsics.c(this.f67786a, ((Normal) obj).f67786a);
        }

        public final int hashCode() {
            return this.f67786a.hashCode();
        }

        public final String toString() {
            return "Normal(imageBinary=" + this.f67786a + ")";
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/pass/Pass$Speedy;", "Lcom/vuitton/foundation/model/domain/model/pass/Pass;", "Ljava/io/InputStream;", "imageNormalBinary", "imageDiffuseBinary", "<init>", "(Ljava/io/InputStream;Ljava/io/InputStream;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Speedy implements Pass {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final InputStream f67787a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final InputStream f67788b;

        public Speedy(InputStream inputStream, InputStream inputStream2) {
            inputStream.getClass();
            inputStream2.getClass();
            this.f67787a = inputStream;
            this.f67788b = inputStream2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Speedy)) {
                return false;
            }
            Speedy speedy = (Speedy) obj;
            return Intrinsics.c(this.f67787a, speedy.f67787a) && Intrinsics.c(this.f67788b, speedy.f67788b);
        }

        public final int hashCode() {
            return this.f67788b.hashCode() + (this.f67787a.hashCode() * 31);
        }

        public final String toString() {
            return "Speedy(imageNormalBinary=" + this.f67787a + ", imageDiffuseBinary=" + this.f67788b + ")";
        }
    }
}
