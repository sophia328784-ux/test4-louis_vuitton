package com.vuitton.android.data.datasource.pass;

import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.PassApi;
import com.vuitton.android.data.dto.pass.ContentDispositionName;
import com.vuitton.android.data.dto.pass.LVPassEligibilityDto;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.error.lvpass.LvPassError;
import defpackage.md;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.ResponseBody;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/PassApi;", "passApi", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/datasource/pass/MultipartParser;", "multipartParser", "<init>", "(Lcom/vuitton/android/data/api/bff/user/PassApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pass/MultipartParser;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PassNetworkDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PassApi f44214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f44215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MultipartParser f44216c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/pass/PassNetworkDataSource$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public PassNetworkDataSource(PassApi passApi, Logger logger, MultipartParser multipartParser) {
        passApi.getClass();
        logger.getClass();
        multipartParser.getClass();
        this.f44214a = passApi;
        this.f44215b = logger;
        this.f44216c = multipartParser;
    }

    /* JADX WARN: Code duplicated, block: B:118:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0021  */
    /* JADX WARN: Code duplicated, block: B:90:0x021c A[Catch: all -> 0x01ac, TryCatch #2 {all -> 0x01ac, blocks: (B:54:0x010d, B:56:0x0163, B:57:0x0172, B:59:0x0179, B:60:0x018c, B:62:0x0192, B:65:0x019f, B:67:0x01a5, B:71:0x01af, B:72:0x01b8, B:73:0x01be, B:75:0x01c4, B:77:0x01dc, B:78:0x01e2, B:85:0x0202, B:88:0x0214, B:90:0x021c, B:92:0x023e, B:94:0x0246, B:96:0x024e, B:98:0x0257, B:100:0x0260, B:102:0x026d, B:104:0x0273, B:106:0x027d, B:107:0x028a, B:109:0x0290, B:113:0x02a3, B:115:0x02a7, B:116:0x02a9, B:81:0x01f4, B:83:0x01f8, B:86:0x0208, B:87:0x020d, B:119:0x02b9, B:120:0x02bf, B:121:0x02c6), top: B:142:0x010d }] */
    /* JADX WARN: Code duplicated, block: B:92:0x023e A[Catch: all -> 0x01ac, TryCatch #2 {all -> 0x01ac, blocks: (B:54:0x010d, B:56:0x0163, B:57:0x0172, B:59:0x0179, B:60:0x018c, B:62:0x0192, B:65:0x019f, B:67:0x01a5, B:71:0x01af, B:72:0x01b8, B:73:0x01be, B:75:0x01c4, B:77:0x01dc, B:78:0x01e2, B:85:0x0202, B:88:0x0214, B:90:0x021c, B:92:0x023e, B:94:0x0246, B:96:0x024e, B:98:0x0257, B:100:0x0260, B:102:0x026d, B:104:0x0273, B:106:0x027d, B:107:0x028a, B:109:0x0290, B:113:0x02a3, B:115:0x02a7, B:116:0x02a9, B:81:0x01f4, B:83:0x01f8, B:86:0x0208, B:87:0x020d, B:119:0x02b9, B:120:0x02bf, B:121:0x02c6), top: B:142:0x010d }] */
    /* JADX WARN: Code duplicated, block: B:94:0x0246 A[Catch: all -> 0x01ac, TryCatch #2 {all -> 0x01ac, blocks: (B:54:0x010d, B:56:0x0163, B:57:0x0172, B:59:0x0179, B:60:0x018c, B:62:0x0192, B:65:0x019f, B:67:0x01a5, B:71:0x01af, B:72:0x01b8, B:73:0x01be, B:75:0x01c4, B:77:0x01dc, B:78:0x01e2, B:85:0x0202, B:88:0x0214, B:90:0x021c, B:92:0x023e, B:94:0x0246, B:96:0x024e, B:98:0x0257, B:100:0x0260, B:102:0x026d, B:104:0x0273, B:106:0x027d, B:107:0x028a, B:109:0x0290, B:113:0x02a3, B:115:0x02a7, B:116:0x02a9, B:81:0x01f4, B:83:0x01f8, B:86:0x0208, B:87:0x020d, B:119:0x02b9, B:120:0x02bf, B:121:0x02c6), top: B:142:0x010d }] */
    /* JADX WARN: Code duplicated, block: B:99:0x025f A[PHI: r4
      0x025f: PHI (r4v11 byte[]) = (r4v10 byte[]), (r4v10 byte[]), (r4v13 byte[]), (r4v13 byte[]) binds: [B:89:0x021a, B:91:0x023c, B:95:0x024c, B:97:0x0255] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Instruction removed from duplicated block: B:90:0x021c, please report this as an issue */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        PassNetworkDataSource$getPass$1 passNetworkDataSource$getPass$1;
        Object failure;
        Object failure2;
        Object failure3;
        byte[] bArrO;
        MatchResult matchResultB;
        int i2;
        List listC;
        Object next;
        int iA;
        if (continuationImpl instanceof PassNetworkDataSource$getPass$1) {
            passNetworkDataSource$getPass$1 = (PassNetworkDataSource$getPass$1) continuationImpl;
            int i3 = passNetworkDataSource$getPass$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                passNetworkDataSource$getPass$1.d = i3 - Integer.MIN_VALUE;
            } else {
                passNetworkDataSource$getPass$1 = new PassNetworkDataSource$getPass$1(this, continuationImpl);
            }
        } else {
            passNetworkDataSource$getPass$1 = new PassNetworkDataSource$getPass$1(this, continuationImpl);
        }
        Object pass = passNetworkDataSource$getPass$1.f44217b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = passNetworkDataSource$getPass$1.d;
        Logger logger = this.f44215b;
        int i5 = 1;
        Throwable th = null;
        try {
            if (i4 == 0) {
                ResultKt.b(pass);
                Result.Companion companion = Result.INSTANCE;
                PassApi passApi = this.f44214a;
                passNetworkDataSource$getPass$1.d = 1;
                pass = passApi.getPass(str, passNetworkDataSource$getPass$1);
                if (pass == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(pass);
            }
            Response response = (Response) pass;
            ResponseBody responseBody = (ResponseBody) response.f79450b;
            if (responseBody == null) {
                logger.d("PassNetworkDataSource", "Response body is null", null);
                throw new Exception("Response body is null");
            }
            String strA = response.f79449a.g.a("Content-Type");
            if (strA == null) {
                logger.d("PassNetworkDataSource", "Content-Type header not found", null);
                throw new Exception("Content-Type header not found");
            }
            "Content-Type: ".concat(strA);
            logger.getClass();
            String string = StringsKt.a0(StringsKt.Q(strA, "boundary=", "")).toString();
            if (StringsKt.w(string)) {
                logger.d("PassNetworkDataSource", "Boundary not found in Content-Type", null);
                throw new Exception("Boundary not found in Content-Type");
            }
            logger.getClass();
            InputStream inputStreamByteStream = responseBody.byteStream();
            try {
                byte[] bArrB = ByteStreamsKt.b(inputStreamByteStream);
                inputStreamByteStream.close();
                failure = new Result(new Pair(bArrB, string));
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                Object objA = NetworkExceptionMapperKt.a(((Result) failure).f71708b, null);
                Throwable thA2 = Result.a(objA);
                if (thA2 == null) {
                    ResultKt.b(objA);
                    Pair pair = (Pair) objA;
                    byte[] bArr = (byte[]) pair.f71705b;
                    String str2 = (String) pair.f71706c;
                    MultipartParser multipartParser = this.f44216c;
                    multipartParser.getClass();
                    Logger logger2 = multipartParser.f44181a;
                    bArr.getClass();
                    str2.getClass();
                    try {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        Charset charset = Charsets.d;
                        byte[] bytes = ("--" + str2 + "\r\n").getBytes(charset);
                        bytes.getClass();
                        byte[] bytes2 = ("\r\n--" + str2 + "\r\n").getBytes(charset);
                        bytes2.getClass();
                        byte[] bytes3 = ("\r\n--" + str2 + "--\r\n").getBytes(charset);
                        bytes3.getClass();
                        ListBuilder listBuilderB = MultipartParser.b(bArr, bytes);
                        if (listBuilderB.getF8313i() < 2) {
                            throw new LvPassError.LvPassMultipartError("Error parsing multipart No parts found with initial boundary");
                        }
                        List listW = CollectionsKt.w(listBuilderB, 1);
                        ArrayList<byte[]> arrayList = new ArrayList();
                        Iterator it = listW.iterator();
                        while (it.hasNext()) {
                            ListBuilder listBuilderB2 = MultipartParser.b((byte[]) it.next(), bytes2);
                            ArrayList arrayList2 = new ArrayList();
                            ListIterator listIterator = listBuilderB2.listIterator(0);
                            while (listIterator.hasNext()) {
                                Object next2 = listIterator.next();
                                int i6 = i5;
                                byte[] bArr2 = (byte[]) next2;
                                if (bArr2.length != 0 && !Arrays.equals(bArr2, bytes3)) {
                                    arrayList2.add(next2);
                                }
                                i5 = i6;
                            }
                            CollectionsKt.j(arrayList, arrayList2);
                            i5 = i5;
                        }
                        int i7 = i5;
                        for (byte[] bArr3 : arrayList) {
                            byte[] bytes4 = "\r\n\r\n".getBytes(Charsets.d);
                            bytes4.getClass();
                            int iA2 = MultipartParser.a(0, bArr3, bytes4);
                            if (iA2 == -1) {
                                logger2.d("MultipartParser", "Invalid part: Missing headers", th);
                            } else {
                                String str3 = new String(ArraysKt.o(bArr3, 0, iA2), Charsets.UTF_8);
                                int i8 = iA2 + 4;
                                if (bArr3.length >= bytes3.length) {
                                    int length = bytes3.length;
                                    int i9 = 0;
                                    while (true) {
                                        if (i9 >= length) {
                                            bArrO = ArraysKt.o(bArr3, i8, bArr3.length - bytes3.length);
                                            break;
                                        }
                                        if (bArr3[(bArr3.length - bytes3.length) + i9] == bytes3[i9]) {
                                            i9++;
                                        }
                                    }
                                    if (StringsKt.k(str3, InitUrlConnection.CONTENT_TYPE_VALUE, false)) {
                                        byte[] bytes5 = ("--" + str2 + "--").getBytes(Charsets.d);
                                        bytes5.getClass();
                                        iA = MultipartParser.a(0, bArrO, bytes5);
                                        if (iA != -1) {
                                            bArrO = ArraysKt.o(bArrO, 0, iA);
                                            if (bArrO.length >= 2) {
                                                if (bArrO[bArrO.length - 2] != 13 && bArrO[bArrO.length - 1] == 10) {
                                                    bArrO = ArraysKt.o(bArrO, 0, bArrO.length - 2);
                                                }
                                            }
                                        }
                                    }
                                    matchResultB = new Regex("Content-Disposition:.*?name=\"(.*?)\"").b(str3);
                                    if (matchResultB != null || (listC = matchResultB.c()) == null) {
                                        i2 = i7;
                                    } else {
                                        i2 = i7;
                                        String str4 = (String) listC.get(i2);
                                        if (str4 != null) {
                                            ContentDispositionName.INSTANCE.getClass();
                                            Iterator<E> it2 = ContentDispositionName.a().iterator();
                                            do {
                                                if (!it2.hasNext()) {
                                                    next = null;
                                                    break;
                                                }
                                                next = it2.next();
                                            } while (!Intrinsics.c(((ContentDispositionName) next).getValue(), str4));
                                            ContentDispositionName contentDispositionName = (ContentDispositionName) next;
                                            if (contentDispositionName == null) {
                                                contentDispositionName = ContentDispositionName.UNKNOWN;
                                            }
                                            linkedHashMap.put(contentDispositionName, new ByteArrayInputStream(bArrO));
                                        }
                                    }
                                    i7 = i2;
                                    th = null;
                                }
                                bArrO = ArraysKt.o(bArr3, i8, bArr3.length);
                                if (StringsKt.k(str3, InitUrlConnection.CONTENT_TYPE_VALUE, false)) {
                                    byte[] bytes6 = ("--" + str2 + "--").getBytes(Charsets.d);
                                    bytes6.getClass();
                                    iA = MultipartParser.a(0, bArrO, bytes6);
                                    if (iA != -1) {
                                        bArrO = ArraysKt.o(bArrO, 0, iA);
                                        if (bArrO.length >= 2) {
                                            if (bArrO[bArrO.length - 2] != 13) {
                                            }
                                        }
                                    }
                                }
                                matchResultB = new Regex("Content-Disposition:.*?name=\"(.*?)\"").b(str3);
                                if (matchResultB != null) {
                                    i2 = i7;
                                } else {
                                    i2 = i7;
                                }
                                i7 = i2;
                                th = null;
                            }
                        }
                        failure3 = new Result(linkedHashMap);
                        Throwable thA3 = Result.a(failure3);
                        if (thA3 != null) {
                            if (thA3 instanceof CancellationException) {
                                throw thA3;
                            }
                            failure3 = new Result(new Result.Failure(thA3));
                        }
                        failure2 = ((Result) failure3).f71708b;
                        Throwable thA4 = Result.a(failure2);
                        if (thA4 != null) {
                            logger2.c("MultipartParser", "Error parsing multipart response", thA4);
                        }
                    } catch (Throwable th2) {
                        Result.Companion companion2 = Result.INSTANCE;
                        failure3 = new Result.Failure(th2);
                    }
                } else {
                    failure2 = new Result.Failure(thA2);
                }
                if (!(failure2 instanceof Result.Failure)) {
                    ((Map) failure2).size();
                    logger.getClass();
                }
                return failure2;
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.a(inputStreamByteStream, th3);
                    throw th4;
                }
            }
        } catch (Throwable th5) {
            Result.Companion companion3 = Result.INSTANCE;
            failure = new Result.Failure(th5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, ContinuationImpl continuationImpl) throws Throwable {
        PassNetworkDataSource$getPassEligibility$1 passNetworkDataSource$getPassEligibility$1;
        Object failure;
        if (continuationImpl instanceof PassNetworkDataSource$getPassEligibility$1) {
            passNetworkDataSource$getPassEligibility$1 = (PassNetworkDataSource$getPassEligibility$1) continuationImpl;
            int i2 = passNetworkDataSource$getPassEligibility$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                passNetworkDataSource$getPassEligibility$1.d = i2 - Integer.MIN_VALUE;
            } else {
                passNetworkDataSource$getPassEligibility$1 = new PassNetworkDataSource$getPassEligibility$1(this, continuationImpl);
            }
        } else {
            passNetworkDataSource$getPassEligibility$1 = new PassNetworkDataSource$getPassEligibility$1(this, continuationImpl);
        }
        Object passEligibility = passNetworkDataSource$getPassEligibility$1.f44219b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = passNetworkDataSource$getPassEligibility$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(passEligibility);
                Result.Companion companion = Result.INSTANCE;
                PassApi passApi = this.f44214a;
                passNetworkDataSource$getPassEligibility$1.d = 1;
                passEligibility = passApi.getPassEligibility(str, passNetworkDataSource$getPassEligibility$1);
                if (passEligibility == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(passEligibility);
            }
            Boolean bool = ((LVPassEligibilityDto) passEligibility).f46169a;
            failure = new Result(Boolean.valueOf(bool != null ? bool.booleanValue() : false));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return NetworkExceptionMapperKt.a(((Result) failure).f71708b, null);
    }
}
