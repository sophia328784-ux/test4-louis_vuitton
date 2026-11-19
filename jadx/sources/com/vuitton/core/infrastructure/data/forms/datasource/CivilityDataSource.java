package com.vuitton.core.infrastructure.data.forms.datasource;

import com.vuitton.core.infrastructure.data.forms.models.CivilityType;
import com.vuitton.core.infrastructure.data.forms.reader.FileReader;
import com.vuitton.core.infrastructure.data.forms.reader.FormFilePathProvider;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/datasource/CivilityDataSource;", "", "Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;", "formFilePathProvider", "Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;", "fileReader", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;)V", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CivilityDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormFilePathProvider f65919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileReader f65920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f65921c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65922a;

        static {
            int[] iArr = new int[CivilityType.values().length];
            try {
                iArr[CivilityType.ADDRESS_TWIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CivilityType.ADDRESS_ATG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CivilityType.GUEST_APPOINTMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CivilityType.PROFILE_ATG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CivilityType.PROFILE_TWIST.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f65922a = iArr;
        }
    }

    @Inject
    public CivilityDataSource(FormFilePathProvider formFilePathProvider, FileReader fileReader) {
        formFilePathProvider.getClass();
        fileReader.getClass();
        this.f65919a = formFilePathProvider;
        this.f65920b = fileReader;
        this.f65921c = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b3, code lost:
    
        if (r13 == r1) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f2, code lost:
    
        if (r13 == r1) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x012d, code lost:
    
        if (r13 == r1) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0168, code lost:
    
        if (r13 == r1) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01a2, code lost:
    
        if (r13 == r1) goto L95;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(com.vuitton.core.infrastructure.data.forms.models.CivilityType r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.core.infrastructure.data.forms.datasource.CivilityDataSource.a(com.vuitton.core.infrastructure.data.forms.models.CivilityType, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
