package com.vuitton.android.data.datasource.pass;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.logger.Logger;
import java.util.Arrays;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/datasource/pass/MultipartParser;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MultipartParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f44181a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/pass/MultipartParser$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public MultipartParser(Logger logger) {
        logger.getClass();
        this.f44181a = logger;
    }

    public static int a(int i2, byte[] bArr, byte[] bArr2) {
        int length = bArr.length - bArr2.length;
        if (i2 > length) {
            return -1;
        }
        while (!Arrays.equals(ArraysKt.o(bArr, i2, bArr2.length + i2), bArr2)) {
            if (i2 == length) {
                return -1;
            }
            i2++;
        }
        return i2;
    }

    public static ListBuilder b(byte[] bArr, byte[] bArr2) {
        ListBuilder listBuilderV = CollectionsKt.v();
        int length = 0;
        while (true) {
            int iA = a(length, bArr, bArr2);
            if (iA == -1) {
                listBuilderV.add(ArraysKt.o(bArr, length, bArr.length));
                return CollectionsKt.r(listBuilderV);
            }
            listBuilderV.add(ArraysKt.o(bArr, length, iA));
            length = bArr2.length + iA;
        }
    }
}
