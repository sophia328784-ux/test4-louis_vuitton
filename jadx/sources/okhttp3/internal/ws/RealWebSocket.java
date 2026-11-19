package okhttp3.internal.ws;

import com.appsflyer.sdk_base.referrer.Payload;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.d21;
import defpackage.fc;
import defpackage.k6;
import defpackage.md;
import defpackage.s71;
import defpackage.tg0;
import defpackage.xn0;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskQueue$schedule$2;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.BufferedSocket;
import okhttp3.internal.connection.BufferedSocketKt$asBufferedSocket$1;
import okhttp3.internal.connection.RealCall;
import okio.Buffer;
import okio.ByteString;
import okio.Sink;
import okio.Socket;
import okio.Source;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0004cdefBI\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0006\u0010\u0011\u001a\u00020\r¢\u0006\u0004\b\u0012\u0010\u0013J\b\u00109\u001a\u00020\u0007H\u0016J\b\u0010.\u001a\u00020\rH\u0016J\b\u0010:\u001a\u00020;H\u0016J\u000e\u0010<\u001a\u00020;2\u0006\u0010=\u001a\u00020>J\f\u0010?\u001a\u000200*\u00020\u000fH\u0002J\u0015\u0010@\u001a\u00020(2\u0006\u0010A\u001a\u00020BH\u0000¢\u0006\u0002\bCJ\u001e\u0010D\u001a\u00020;2\u0006\u0010&\u001a\u00020\u00172\u0006\u0010'\u001a\u00020E2\u0006\u0010=\u001a\u000200J\u000e\u0010F\u001a\u00020;2\u0006\u0010A\u001a\u00020BJ\u0006\u0010G\u001a\u000200J\u0006\u0010H\u001a\u00020;J\u0006\u0010I\u001a\u00020;J\u0006\u00105\u001a\u000202J\u0006\u00106\u001a\u000202J\u0006\u00107\u001a\u000202J\u0010\u0010J\u001a\u00020;2\u0006\u0010K\u001a\u00020\u0017H\u0016J\u0010\u0010J\u001a\u00020;2\u0006\u0010L\u001a\u00020+H\u0016J\u0010\u0010M\u001a\u00020;2\u0006\u0010N\u001a\u00020+H\u0016J\u0010\u0010O\u001a\u00020;2\u0006\u0010N\u001a\u00020+H\u0016J\u0018\u0010P\u001a\u00020;2\u0006\u0010Q\u001a\u0002022\u0006\u0010R\u001a\u00020\u0017H\u0016J\u0010\u0010S\u001a\u0002002\u0006\u0010K\u001a\u00020\u0017H\u0016J\u0010\u0010S\u001a\u0002002\u0006\u0010L\u001a\u00020+H\u0016J\u0018\u0010S\u001a\u0002002\u0006\u0010T\u001a\u00020+2\u0006\u0010U\u001a\u000202H\u0002J\u000e\u0010V\u001a\u0002002\u0006\u0010N\u001a\u00020+J\u001a\u0010W\u001a\u0002002\u0006\u0010Q\u001a\u0002022\b\u0010R\u001a\u0004\u0018\u00010\u0017H\u0016J \u0010W\u001a\u0002002\u0006\u0010Q\u001a\u0002022\b\u0010R\u001a\u0004\u0018\u00010\u00172\u0006\u0010X\u001a\u00020\rJ\b\u0010Y\u001a\u00020;H\u0002J\r\u0010Z\u001a\u000200H\u0000¢\u0006\u0002\b[J\r\u0010\\\u001a\u00020;H\u0000¢\u0006\u0002\b]J(\u0010^\u001a\u00020;2\n\u0010_\u001a\u00060`j\u0002`a2\n\b\u0002\u0010A\u001a\u0004\u0018\u00010B2\b\b\u0002\u0010b\u001a\u000200R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020+0*X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\b\u0012\u0004\u0012\u00020-0*X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00101\u001a\u000202X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00103\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00104\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00105\u001a\u000202X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00106\u001a\u000202X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u000202X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000200X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006g"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket;", "Lokhttp3/WebSocket;", "Lokhttp3/internal/ws/WebSocketReader$FrameCallback;", "Lokhttp3/internal/concurrent/Lockable;", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "originalRequest", "Lokhttp3/Request;", "listener", "Lokhttp3/WebSocketListener;", "random", "Ljava/util/Random;", "pingIntervalMillis", "", "extensions", "Lokhttp3/internal/ws/WebSocketExtensions;", "minimumDeflateSize", "webSocketCloseTimeout", "<init>", "(Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/Request;Lokhttp3/WebSocketListener;Ljava/util/Random;JLokhttp3/internal/ws/WebSocketExtensions;JJ)V", "getListener$okhttp", "()Lokhttp3/WebSocketListener;", ConfigurationName.KEY, "", "call", "Lokhttp3/Call;", "getCall$okhttp", "()Lokhttp3/Call;", "setCall$okhttp", "(Lokhttp3/Call;)V", "writerTask", "Lokhttp3/internal/concurrent/Task;", "reader", "Lokhttp3/internal/ws/WebSocketReader;", "writer", "Lokhttp3/internal/ws/WebSocketWriter;", "taskQueue", "Lokhttp3/internal/concurrent/TaskQueue;", "name", "socket", "Lokio/Socket;", "pongQueue", "Ljava/util/ArrayDeque;", "Lokio/ByteString;", "messageAndCloseQueue", "", "queueSize", "enqueuedClose", "", "receivedCloseCode", "", "receivedCloseReason", "failed", "sentPingCount", "receivedPingCount", "receivedPongCount", "awaitingPong", "request", "cancel", "", "connect", "client", "Lokhttp3/OkHttpClient;", "isValid", "checkUpgradeSuccess", Payload.RESPONSE, "Lokhttp3/Response;", "checkUpgradeSuccess$okhttp", "initReaderAndWriter", "Lokhttp3/internal/connection/BufferedSocket;", "loopReader", "processNextFrame", "finishReader", "tearDown", "onReadMessage", "text", "bytes", "onReadPing", ConfigurationName.PING_PAYLOAD, "onReadPong", "onReadClose", m.v, "reason", "send", DbParams.KEY_DATA, "formatOpcode", "pong", "close", "cancelAfterCloseMillis", "runWriter", "writeOneFrame", "writeOneFrame$okhttp", "writePingFrame", "writePingFrame$okhttp", "failWebSocket", "e", "Ljava/lang/Exception;", "Lkotlin/Exception;", "isWriter", "Message", "Close", "WriterTask", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback, Lockable {
    public static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    public static final long DEFAULT_MINIMUM_DEFLATE_SIZE = 1024;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private boolean awaitingPong;
    private Call call;
    private boolean enqueuedClose;
    private WebSocketExtensions extensions;
    private boolean failed;
    private final String key;
    private final WebSocketListener listener;
    private final ArrayDeque<Object> messageAndCloseQueue;
    private long minimumDeflateSize;
    private String name;
    private final Request originalRequest;
    private final long pingIntervalMillis;
    private final ArrayDeque<ByteString> pongQueue;
    private long queueSize;
    private final Random random;
    private WebSocketReader reader;
    private int receivedCloseCode;
    private String receivedCloseReason;
    private int receivedPingCount;
    private int receivedPongCount;
    private int sentPingCount;
    private Socket socket;
    private TaskQueue taskQueue;
    private final long webSocketCloseTimeout;
    private WebSocketWriter writer;
    private Task writerTask;
    private static final List<Protocol> ONLY_HTTP1 = CollectionsKt.O(Protocol.HTTP_1_1);

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Close;", "", m.v, "", "reason", "Lokio/ByteString;", "cancelAfterCloseMillis", "", "<init>", "(ILokio/ByteString;J)V", "getCode", "()I", "getReason", "()Lokio/ByteString;", "getCancelAfterCloseMillis", "()J", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Close {
        private final long cancelAfterCloseMillis;
        private final int code;
        private final ByteString reason;

        public Close(int i2, ByteString byteString, long j2) {
            this.code = i2;
            this.reason = byteString;
            this.cancelAfterCloseMillis = j2;
        }

        public final long getCancelAfterCloseMillis() {
            return this.cancelAfterCloseMillis;
        }

        public final int getCode() {
            return this.code;
        }

        public final ByteString getReason() {
            return this.reason;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$Message;", "", "formatOpcode", "", DbParams.KEY_DATA, "Lokio/ByteString;", "<init>", "(ILokio/ByteString;)V", "getFormatOpcode", "()I", "getData", "()Lokio/ByteString;", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Message {
        private final ByteString data;
        private final int formatOpcode;

        public Message(int i2, ByteString byteString) {
            byteString.getClass();
            this.formatOpcode = i2;
            this.data = byteString;
        }

        public final ByteString getData() {
            return this.data;
        }

        public final int getFormatOpcode() {
            return this.formatOpcode;
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/ws/RealWebSocket$WriterTask;", "Lokhttp3/internal/concurrent/Task;", "<init>", "(Lokhttp3/internal/ws/RealWebSocket;)V", "runOnce", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class WriterTask extends Task {
        public WriterTask() {
            super(RealWebSocket.this.name + " writer", false, 2, null);
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            try {
                return RealWebSocket.this.writeOneFrame$okhttp() ? 0L : -1L;
            } catch (IOException e2) {
                RealWebSocket.failWebSocket$default(RealWebSocket.this, e2, null, true, 2, null);
                return -1L;
            }
        }
    }

    public RealWebSocket(TaskRunner taskRunner, Request request, WebSocketListener webSocketListener, Random random, long j2, WebSocketExtensions webSocketExtensions, long j3, long j4) {
        taskRunner.getClass();
        request.getClass();
        webSocketListener.getClass();
        random.getClass();
        this.originalRequest = request;
        this.listener = webSocketListener;
        this.random = random;
        this.pingIntervalMillis = j2;
        this.extensions = webSocketExtensions;
        this.minimumDeflateSize = j3;
        this.webSocketCloseTimeout = j4;
        this.taskQueue = taskRunner.d();
        this.pongQueue = new ArrayDeque<>();
        this.messageAndCloseQueue = new ArrayDeque<>();
        this.receivedCloseCode = -1;
        String str = request.f76970b;
        if (!"GET".equals(str)) {
            tg0.n(str, "Request must be GET: ");
            throw null;
        }
        ByteString.Companion companion = ByteString.f77398e;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        this.key = ByteString.Companion.d(companion, bArr).a();
    }

    public static /* synthetic */ void failWebSocket$default(RealWebSocket realWebSocket, Exception exc, Response response, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            response = null;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        realWebSocket.failWebSocket(exc, response, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit failWebSocket$lambda$0$0(Ref$ObjectRef ref$ObjectRef) {
        _UtilCommonKt.b((Closeable) ref$ObjectRef.f71921b);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit finishReader$lambda$0$0(WebSocketWriter webSocketWriter) {
        _UtilCommonKt.b(webSocketWriter);
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long initReaderAndWriter$lambda$0$0(RealWebSocket realWebSocket, long j2) {
        realWebSocket.writePingFrame$okhttp();
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isValid(WebSocketExtensions webSocketExtensions) {
        if (webSocketExtensions.f77360f || webSocketExtensions.f77357b != null) {
            return false;
        }
        Integer num = webSocketExtensions.d;
        if (num == null) {
            return true;
        }
        int iIntValue = num.intValue();
        return 8 <= iIntValue && iIntValue < 16;
    }

    private final void runWriter() {
        TimeZone timeZone = _UtilJvmKt.f77018a;
        Task task = this.writerTask;
        if (task != null) {
            this.taskQueue.d(task, 0L);
        }
    }

    private final synchronized boolean send(ByteString data, int formatOpcode) {
        if (!this.failed && !this.enqueuedClose) {
            if (this.queueSize + ((long) data.e()) > MAX_QUEUE_SIZE) {
                close(1001, null);
                return false;
            }
            this.queueSize += (long) data.e();
            this.messageAndCloseQueue.add(new Message(formatOpcode, data));
            runWriter();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit writeOneFrame$lambda$0$0(RealWebSocket realWebSocket) {
        realWebSocket.cancel();
        return Unit.f71739a;
    }

    public void cancel() {
        Call call = this.call;
        call.getClass();
        call.cancel();
    }

    public final Socket checkUpgradeSuccess$okhttp(Response response) throws IOException {
        response.getClass();
        Headers headers = response.g;
        int i2 = response.f76986e;
        if (i2 != 101) {
            StringBuilder sb = new StringBuilder("Expected HTTP 101 response but was '");
            sb.append(i2);
            sb.append(' ');
            throw new ProtocolException(fc.l(sb, response.d, '\''));
        }
        String strA = headers.a("Connection");
        if (strA == null) {
            strA = null;
        }
        if (!"Upgrade".equalsIgnoreCase(strA)) {
            throw new ProtocolException(d21.d('\'', "Expected 'Connection' header value 'Upgrade' but was '", strA));
        }
        String strA2 = headers.a("Upgrade");
        if (strA2 == null) {
            strA2 = null;
        }
        if (!"websocket".equalsIgnoreCase(strA2)) {
            throw new ProtocolException(d21.d('\'', "Expected 'Upgrade' header value 'websocket' but was '", strA2));
        }
        String strA3 = headers.a("Sec-WebSocket-Accept");
        String str = strA3 != null ? strA3 : null;
        ByteString.Companion companion = ByteString.f77398e;
        String str2 = this.key + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
        companion.getClass();
        String strA4 = ByteString.Companion.c(str2).d(McElieceCCA2KeyGenParameterSpec.SHA1).a();
        if (Intrinsics.c(strA4, str)) {
            Socket socket = response.f76989i;
            if (socket != null) {
                return socket;
            }
            throw new ProtocolException("Web Socket socket missing: bad interceptor?");
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + strA4 + "' but was '" + str + '\'');
    }

    public final synchronized boolean close(int code, String reason, long cancelAfterCloseMillis) {
        ByteString byteStringC;
        try {
            String strA = WebSocketProtocol.a(code);
            if (strA != null) {
                throw new IllegalArgumentException(strA.toString());
            }
            if (reason != null) {
                ByteString.f77398e.getClass();
                byteStringC = ByteString.Companion.c(reason);
                if (byteStringC.data.length > 123) {
                    throw new IllegalArgumentException("reason.size() > 123: ".concat(reason).toString());
                }
            } else {
                byteStringC = null;
            }
            if (!this.failed && !this.enqueuedClose) {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(code, byteStringC, cancelAfterCloseMillis));
                runWriter();
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void connect(OkHttpClient client) {
        client.getClass();
        Request request = this.originalRequest;
        request.getClass();
        if (request.f76971c.a("Sec-WebSocket-Extensions") != null) {
            failWebSocket$default(this, new ProtocolException("Request header not permitted: 'Sec-WebSocket-Extensions'"), null, false, 6, null);
            return;
        }
        OkHttpClient.Builder builder = new OkHttpClient.Builder(client);
        EventListener eventListener = EventListener.NONE;
        eventListener.getClass();
        builder.f76963e = new s71(eventListener);
        List<Protocol> list = ONLY_HTTP1;
        list.getClass();
        ArrayList arrayList = new ArrayList(list);
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        if (!arrayList.contains(protocol) && !arrayList.contains(Protocol.HTTP_1_1)) {
            tg0.n(arrayList, "protocols must contain h2_prior_knowledge or http/1.1: ");
            return;
        }
        if (arrayList.contains(protocol) && arrayList.size() > 1) {
            tg0.n(arrayList, "protocols containing h2_prior_knowledge cannot use other protocols: ");
            return;
        }
        if (arrayList.contains(Protocol.HTTP_1_0)) {
            tg0.n(arrayList, "protocols must not contain http/1.0: ");
            return;
        }
        if (arrayList.contains(null)) {
            md.n("protocols must not contain null");
            return;
        }
        arrayList.remove(Protocol.SPDY_3);
        if (!arrayList.equals(builder.t)) {
            builder.C = null;
        }
        List listUnmodifiableList = Collections.unmodifiableList(arrayList);
        listUnmodifiableList.getClass();
        builder.t = listUnmodifiableList;
        OkHttpClient okHttpClient = new OkHttpClient(builder);
        Request request2 = this.originalRequest;
        request2.getClass();
        Request.Builder builder2 = new Request.Builder(request2);
        builder2.b("Upgrade", "websocket");
        builder2.b("Connection", "Upgrade");
        builder2.b("Sec-WebSocket-Key", this.key);
        builder2.b("Sec-WebSocket-Version", DbParams.GZIP_TRANSPORT_ENCRYPT);
        builder2.b("Sec-WebSocket-Extensions", "permessage-deflate");
        final Request request3 = new Request(builder2);
        RealCall realCall = new RealCall(okHttpClient, request3, true);
        this.call = realCall;
        realCall.r(new Callback() { // from class: okhttp3.internal.ws.RealWebSocket.connect.1
            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e2) {
                call.getClass();
                e2.getClass();
                RealWebSocket.failWebSocket$default(RealWebSocket.this, e2, null, false, 6, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws Throwable {
                Source source;
                Sink sinkA;
                String strG;
                call.getClass();
                response.getClass();
                try {
                    Socket socketCheckUpgradeSuccess$okhttp = RealWebSocket.this.checkUpgradeSuccess$okhttp(response);
                    WebSocketExtensions.Companion companion = WebSocketExtensions.g;
                    Headers headers = response.g;
                    companion.getClass();
                    headers.getClass();
                    int size = headers.size();
                    int i2 = 0;
                    int i3 = 0;
                    boolean z = false;
                    boolean z2 = false;
                    boolean z3 = false;
                    boolean z4 = false;
                    Integer intOrNull = null;
                    Integer intOrNull2 = null;
                    while (i3 < size) {
                        if (headers.f(i3).equalsIgnoreCase("Sec-WebSocket-Extensions")) {
                            String strM = headers.m(i3);
                            int i4 = i2;
                            while (i4 < strM.length()) {
                                int i5 = size;
                                int iG = _UtilCommonKt.g(strM, ',', i4, i2, 4);
                                int iF = _UtilCommonKt.f(strM, i4, iG, ';');
                                int iJ = _UtilCommonKt.j(i4, iF, strM);
                                String strSubstring = strM.substring(iJ, _UtilCommonKt.k(iJ, iF, strM));
                                int i6 = iF + 1;
                                if (strSubstring.equalsIgnoreCase("permessage-deflate")) {
                                    if (z) {
                                        z4 = true;
                                    }
                                    i4 = i6;
                                    while (i4 < iG) {
                                        int iF2 = _UtilCommonKt.f(strM, i4, iG, ';');
                                        int iF3 = _UtilCommonKt.f(strM, i4, iF2, '=');
                                        int iJ2 = _UtilCommonKt.j(i4, iF3, strM);
                                        String strSubstring2 = strM.substring(iJ2, _UtilCommonKt.k(iJ2, iF3, strM));
                                        if (iF3 < iF2) {
                                            int iJ3 = _UtilCommonKt.j(iF3 + 1, iF2, strM);
                                            strG = StringsKt.G(strM.substring(iJ3, _UtilCommonKt.k(iJ3, iF2, strM)), "\"", "\"");
                                        } else {
                                            strG = null;
                                        }
                                        i4 = iF2 + 1;
                                        if (strSubstring2.equalsIgnoreCase("client_max_window_bits")) {
                                            if (intOrNull != null) {
                                                z4 = true;
                                            }
                                            intOrNull = strG != null ? StringsKt.toIntOrNull(strG) : null;
                                            if (intOrNull == null) {
                                                z4 = true;
                                            }
                                        } else if (strSubstring2.equalsIgnoreCase("client_no_context_takeover")) {
                                            if (z2) {
                                                z4 = true;
                                            }
                                            if (strG != null) {
                                                z4 = true;
                                            }
                                            z2 = true;
                                        } else {
                                            if (strSubstring2.equalsIgnoreCase("server_max_window_bits")) {
                                                if (intOrNull2 != null) {
                                                    z4 = true;
                                                }
                                                intOrNull2 = strG != null ? StringsKt.toIntOrNull(strG) : null;
                                                if (intOrNull2 == null) {
                                                }
                                            } else if (strSubstring2.equalsIgnoreCase("server_no_context_takeover")) {
                                                if (z3) {
                                                    z4 = true;
                                                }
                                                if (strG != null) {
                                                    z4 = true;
                                                }
                                                z3 = true;
                                            }
                                            z4 = true;
                                        }
                                    }
                                    z = true;
                                } else {
                                    i4 = i6;
                                    z4 = true;
                                }
                                size = i5;
                                i2 = 0;
                            }
                        }
                        i3++;
                        size = size;
                        i2 = 0;
                    }
                    WebSocketExtensions webSocketExtensions = new WebSocketExtensions(z, intOrNull, z2, intOrNull2, z3, z4);
                    RealWebSocket.this.extensions = webSocketExtensions;
                    if (!RealWebSocket.this.isValid(webSocketExtensions)) {
                        RealWebSocket realWebSocket = RealWebSocket.this;
                        synchronized (realWebSocket) {
                            realWebSocket.messageAndCloseQueue.clear();
                            realWebSocket.close(1010, "unexpected Sec-WebSocket-Extensions in response header");
                        }
                    }
                    String str = _UtilJvmKt.f77019b + " WebSocket " + request3.f76969a.h();
                    RealWebSocket realWebSocket2 = RealWebSocket.this;
                    socketCheckUpgradeSuccess$okhttp.getClass();
                    realWebSocket2.initReaderAndWriter(str, new BufferedSocketKt$asBufferedSocket$1(socketCheckUpgradeSuccess$okhttp), true);
                    RealWebSocket.this.loopReader(response);
                } catch (IOException e2) {
                    RealWebSocket.failWebSocket$default(RealWebSocket.this, e2, response, false, 4, null);
                    _UtilCommonKt.b(response);
                    Socket socket = response.f76989i;
                    if (socket != null && (sinkA = socket.a()) != null) {
                        _UtilCommonKt.b(sinkA);
                    }
                    Socket socket2 = response.f76989i;
                    if (socket2 == null || (source = socket2.getSource()) == null) {
                        return;
                    }
                    _UtilCommonKt.b(source);
                }
            }
        });
    }

    public final void failWebSocket(Exception e2, Response response, boolean isWriter) {
        WebSocketWriter webSocketWriter;
        e2.getClass();
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                this.failed = true;
                Socket socket = this.socket;
                WebSocketWriter webSocketWriter2 = this.writer;
                ref$ObjectRef.f71921b = webSocketWriter2;
                this.writer = null;
                if (!isWriter && webSocketWriter2 != null) {
                    TaskQueue.b(this.taskQueue, this.name + " writer close", 0L, new xn0(ref$ObjectRef, 8), 2);
                }
                this.taskQueue.g();
                try {
                    this.listener.onFailure(this, e2, response);
                } finally {
                    if (socket != null) {
                        socket.cancel();
                    }
                    if (isWriter && (webSocketWriter = (WebSocketWriter) ref$ObjectRef.f71921b) != null) {
                        _UtilCommonKt.b(webSocketWriter);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void finishReader() {
        int i2;
        String str;
        WebSocketReader webSocketReader;
        boolean z;
        synchronized (this) {
            try {
                i2 = this.receivedCloseCode;
                str = this.receivedCloseReason;
                webSocketReader = this.reader;
                this.reader = null;
                if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                    WebSocketWriter webSocketWriter = this.writer;
                    if (webSocketWriter != null) {
                        this.writer = null;
                        TaskQueue.b(this.taskQueue, this.name + " writer close", 0L, new xn0(webSocketWriter, 7), 2);
                    }
                    this.taskQueue.g();
                }
                z = (this.failed || this.writer != null || this.receivedCloseCode == -1) ? false : true;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            WebSocketListener webSocketListener = this.listener;
            str.getClass();
            webSocketListener.onClosed(this, i2, str);
        }
        if (webSocketReader != null) {
            _UtilCommonKt.b(webSocketReader);
        }
    }

    /* JADX INFO: renamed from: getCall$okhttp, reason: from getter */
    public final Call getCall() {
        return this.call;
    }

    /* JADX INFO: renamed from: getListener$okhttp, reason: from getter */
    public final WebSocketListener getListener() {
        return this.listener;
    }

    public final void initReaderAndWriter(String name, BufferedSocket socket, boolean client) {
        name.getClass();
        socket.getClass();
        WebSocketExtensions webSocketExtensions = this.extensions;
        webSocketExtensions.getClass();
        synchronized (this) {
            try {
                this.name = name;
                this.socket = socket;
                this.writer = new WebSocketWriter(client, socket.a(), this.random, webSocketExtensions.f77356a, client ? webSocketExtensions.f77358c : webSocketExtensions.f77359e, this.minimumDeflateSize);
                this.writerTask = new WriterTask();
                long j2 = this.pingIntervalMillis;
                if (j2 != 0) {
                    long nanos = TimeUnit.MILLISECONDS.toNanos(j2);
                    TaskQueue taskQueue = this.taskQueue;
                    String strConcat = name.concat(" ping");
                    k6 k6Var = new k6(this, nanos, 3);
                    taskQueue.getClass();
                    taskQueue.d(new TaskQueue$schedule$2(strConcat, k6Var), nanos);
                }
                if (!this.messageAndCloseQueue.isEmpty()) {
                    runWriter();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.reader = new WebSocketReader(client, socket.getSource(), this, webSocketExtensions.f77356a, !client ? webSocketExtensions.f77358c : webSocketExtensions.f77359e);
    }

    public final void loopReader(Response response) throws Throwable {
        Throwable th;
        RealWebSocket realWebSocket;
        response.getClass();
        try {
            this.listener.onOpen(this, response);
            while (this.receivedCloseCode == -1) {
                WebSocketReader webSocketReader = this.reader;
                webSocketReader.getClass();
                webSocketReader.h();
            }
            finishReader();
        } catch (Exception e2) {
            realWebSocket = this;
            try {
                failWebSocket$default(realWebSocket, e2, null, false, 6, null);
                realWebSocket.finishReader();
            } catch (Throwable th2) {
                th = th2;
                realWebSocket.finishReader();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            realWebSocket = this;
            realWebSocket.finishReader();
            throw th;
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int code, String reason) {
        reason.getClass();
        if (code == -1) {
            md.n("Failed requirement.");
            return;
        }
        synchronized (this) {
            if (this.receivedCloseCode != -1) {
                throw new IllegalStateException("already closed");
            }
            this.receivedCloseCode = code;
            this.receivedCloseReason = reason;
        }
        this.listener.onClosing(this, code, reason);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(String text) throws IOException {
        text.getClass();
        this.listener.onMessage(this, text);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPing(ByteString payload) {
        try {
            payload.getClass();
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(payload);
                runWriter();
                this.receivedPingCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPong(ByteString payload) {
        payload.getClass();
        this.receivedPongCount++;
        this.awaitingPong = false;
    }

    public final synchronized boolean pong(ByteString payload) {
        try {
            payload.getClass();
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(payload);
                runWriter();
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean processNextFrame() throws IOException {
        try {
            WebSocketReader webSocketReader = this.reader;
            webSocketReader.getClass();
            webSocketReader.h();
            return this.receivedCloseCode == -1;
        } catch (Exception e2) {
            failWebSocket$default(this, e2, null, false, 6, null);
            return false;
        }
    }

    public synchronized long queueSize() {
        return this.queueSize;
    }

    public final synchronized int receivedPingCount() {
        return this.receivedPingCount;
    }

    public final synchronized int receivedPongCount() {
        return this.receivedPongCount;
    }

    @Override // okhttp3.WebSocket
    /* JADX INFO: renamed from: request, reason: from getter */
    public Request getOriginalRequest() {
        return this.originalRequest;
    }

    public final synchronized int sentPingCount() {
        return this.sentPingCount;
    }

    public final void setCall$okhttp(Call call) {
        this.call = call;
    }

    public final void tearDown() throws InterruptedException {
        this.taskQueue.g();
        this.taskQueue.c().await(10L, TimeUnit.SECONDS);
    }

    public final boolean writeOneFrame$okhttp() throws IOException {
        String str;
        int i2;
        WebSocketWriter webSocketWriter;
        String strA;
        synchronized (this) {
            try {
                boolean z = false;
                if (this.failed) {
                    return false;
                }
                WebSocketWriter webSocketWriter2 = this.writer;
                ByteString byteStringPoll = this.pongQueue.poll();
                Object obj = null;
                if (byteStringPoll == null) {
                    Object objPoll = this.messageAndCloseQueue.poll();
                    if (objPoll instanceof Close) {
                        i2 = this.receivedCloseCode;
                        str = this.receivedCloseReason;
                        if (i2 != -1) {
                            webSocketWriter = this.writer;
                            this.writer = null;
                            if (webSocketWriter != null && this.reader == null) {
                                z = true;
                            }
                            this.taskQueue.g();
                        } else {
                            long cancelAfterCloseMillis = ((Close) objPoll).getCancelAfterCloseMillis();
                            TaskQueue.b(this.taskQueue, this.name + " cancel", TimeUnit.MILLISECONDS.toNanos(cancelAfterCloseMillis), new xn0(this, 6), 4);
                            webSocketWriter = null;
                        }
                    } else {
                        if (objPoll == null) {
                            return false;
                        }
                        str = null;
                        i2 = -1;
                        webSocketWriter = null;
                    }
                    obj = objPoll;
                } else {
                    str = null;
                    i2 = -1;
                    webSocketWriter = null;
                }
                try {
                    if (byteStringPoll != null) {
                        webSocketWriter2.getClass();
                        webSocketWriter2.c(10, byteStringPoll);
                    } else if (obj instanceof Message) {
                        webSocketWriter2.getClass();
                        webSocketWriter2.d(((Message) obj).getFormatOpcode(), ((Message) obj).getData());
                        synchronized (this) {
                            this.queueSize -= (long) ((Message) obj).getData().e();
                        }
                    } else {
                        if (!(obj instanceof Close)) {
                            throw new AssertionError();
                        }
                        webSocketWriter2.getClass();
                        int code = ((Close) obj).getCode();
                        ByteString reason = ((Close) obj).getReason();
                        ByteString byteStringN0 = ByteString.f77399f;
                        if (code != 0 || reason != null) {
                            if (code != 0 && (strA = WebSocketProtocol.a(code)) != null) {
                                throw new IllegalArgumentException(strA.toString());
                            }
                            Buffer buffer = new Buffer();
                            buffer.v0(code);
                            if (reason != null) {
                                buffer.l0(reason);
                            }
                            byteStringN0 = buffer.N0(buffer.f77390c);
                        }
                        try {
                            webSocketWriter2.c(8, byteStringN0);
                            webSocketWriter2.f77375j = true;
                            if (z) {
                                WebSocketListener webSocketListener = this.listener;
                                str.getClass();
                                webSocketListener.onClosed(this, i2, str);
                            }
                        } catch (Throwable th) {
                            webSocketWriter2.f77375j = true;
                            throw th;
                        }
                    }
                    if (webSocketWriter != null) {
                        _UtilCommonKt.b(webSocketWriter);
                    }
                    return true;
                } catch (Throwable th2) {
                    if (webSocketWriter != null) {
                        _UtilCommonKt.b(webSocketWriter);
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void writePingFrame$okhttp() {
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.writer;
                if (webSocketWriter == null) {
                    return;
                }
                int i2 = this.awaitingPong ? this.sentPingCount : -1;
                this.sentPingCount++;
                this.awaitingPong = true;
                if (i2 != -1) {
                    StringBuilder sb = new StringBuilder("sent ping but didn't receive pong within ");
                    sb.append(this.pingIntervalMillis);
                    sb.append("ms (after ");
                    failWebSocket$default(this, new SocketTimeoutException(a.i(i2 - 1, " successful ping/pongs)", sb)), null, true, 2, null);
                    return;
                }
                try {
                    ByteString byteString = ByteString.f77399f;
                    byteString.getClass();
                    webSocketWriter.c(9, byteString);
                } catch (IOException e2) {
                    failWebSocket$default(this, e2, null, true, 2, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(ByteString bytes) throws IOException {
        bytes.getClass();
        this.listener.onMessage(this, bytes);
    }

    public boolean send(ByteString bytes) {
        bytes.getClass();
        return send(bytes, 2);
    }

    public boolean send(String text) {
        text.getClass();
        ByteString.f77398e.getClass();
        return send(ByteString.Companion.c(text), 1);
    }

    public boolean close(int code, String reason) {
        return close(code, reason, this.webSocketCloseTimeout);
    }
}
