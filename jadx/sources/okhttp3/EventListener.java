package okhttp3;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b&\u0018\u0000 \u001b2\u00020\u0001:\u0003\u001c\u001b\u001dB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ'\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J)\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0018\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lokhttp3/EventListener;", "", "<init>", "()V", "Lokhttp3/Call;", "call", "Lokhttp3/Dispatcher;", "dispatcher", "", "dispatcherQueueStart", "(Lokhttp3/Call;Lokhttp3/Dispatcher;)V", "dispatcherQueueEnd", "Ljava/io/IOException;", MvelScriptManager.VAR_EXCEPTION, "", "retry", "retryDecision", "(Lokhttp3/Call;Ljava/io/IOException;Z)V", "Lokhttp3/Response;", "networkResponse", "Lokhttp3/Request;", "nextRequest", "followUpDecision", "(Lokhttp3/Call;Lokhttp3/Response;Lokhttp3/Request;)V", "other", "plus", "(Lokhttp3/EventListener;)Lokhttp3/EventListener;", "Companion", "Factory", "AggregateEventListener", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class EventListener {
    public static final EventListener NONE = new EventListener$Companion$NONE$1();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/EventListener$AggregateEventListener;", "Lokhttp3/EventListener;", "", "eventListeners", "<init>", "([Lokhttp3/EventListener;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AggregateEventListener extends EventListener {
        public final EventListener[] l;

        public AggregateEventListener(EventListener[] eventListenerArr) {
            eventListenerArr.getClass();
            this.l = eventListenerArr;
        }

        @Override // okhttp3.EventListener
        public final void cacheConditionalHit(Call call, Response response) {
            call.getClass();
            response.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.cacheConditionalHit(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public final void cacheHit(Call call, Response response) {
            call.getClass();
            response.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.cacheHit(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public final void cacheMiss(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.cacheMiss(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void callEnd(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.callEnd(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void callFailed(Call call, IOException iOException) {
            call.getClass();
            iOException.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.callFailed(call, iOException);
            }
        }

        @Override // okhttp3.EventListener
        public final void callStart(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.callStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void canceled(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.canceled(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
            call.getClass();
            inetSocketAddress.getClass();
            proxy.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.connectEnd(call, inetSocketAddress, proxy, protocol);
            }
        }

        @Override // okhttp3.EventListener
        public final void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
            call.getClass();
            inetSocketAddress.getClass();
            proxy.getClass();
            iOException.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.connectFailed(call, inetSocketAddress, proxy, protocol, iOException);
            }
        }

        @Override // okhttp3.EventListener
        public final void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
            call.getClass();
            inetSocketAddress.getClass();
            proxy.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.connectStart(call, inetSocketAddress, proxy);
            }
        }

        @Override // okhttp3.EventListener
        public final void connectionAcquired(Call call, Connection connection) {
            call.getClass();
            connection.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.connectionAcquired(call, connection);
            }
        }

        @Override // okhttp3.EventListener
        public final void connectionReleased(Call call, Connection connection) {
            call.getClass();
            connection.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.connectionReleased(call, connection);
            }
        }

        @Override // okhttp3.EventListener
        public final void dispatcherQueueEnd(Call call, Dispatcher dispatcher) {
            call.getClass();
            dispatcher.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.dispatcherQueueEnd(call, dispatcher);
            }
        }

        @Override // okhttp3.EventListener
        public final void dispatcherQueueStart(Call call, Dispatcher dispatcher) {
            call.getClass();
            dispatcher.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.dispatcherQueueStart(call, dispatcher);
            }
        }

        @Override // okhttp3.EventListener
        public final void dnsEnd(Call call, String str, List list) {
            call.getClass();
            str.getClass();
            list.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.dnsEnd(call, str, list);
            }
        }

        @Override // okhttp3.EventListener
        public final void dnsStart(Call call, String str) {
            call.getClass();
            str.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.dnsStart(call, str);
            }
        }

        @Override // okhttp3.EventListener
        public final void followUpDecision(Call call, Response response, Request request) {
            call.getClass();
            response.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.followUpDecision(call, response, request);
            }
        }

        @Override // okhttp3.EventListener
        public final void proxySelectEnd(Call call, HttpUrl httpUrl, List list) {
            call.getClass();
            httpUrl.getClass();
            list.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.proxySelectEnd(call, httpUrl, list);
            }
        }

        @Override // okhttp3.EventListener
        public final void proxySelectStart(Call call, HttpUrl httpUrl) {
            call.getClass();
            httpUrl.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.proxySelectStart(call, httpUrl);
            }
        }

        @Override // okhttp3.EventListener
        public final void requestBodyEnd(Call call, long j2) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.requestBodyEnd(call, j2);
            }
        }

        @Override // okhttp3.EventListener
        public final void requestBodyStart(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.requestBodyStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void requestFailed(Call call, IOException iOException) {
            call.getClass();
            iOException.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.requestFailed(call, iOException);
            }
        }

        @Override // okhttp3.EventListener
        public final void requestHeadersEnd(Call call, Request request) {
            call.getClass();
            request.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.requestHeadersEnd(call, request);
            }
        }

        @Override // okhttp3.EventListener
        public final void requestHeadersStart(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.requestHeadersStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void responseBodyEnd(Call call, long j2) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.responseBodyEnd(call, j2);
            }
        }

        @Override // okhttp3.EventListener
        public final void responseBodyStart(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.responseBodyStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void responseFailed(Call call, IOException iOException) {
            call.getClass();
            iOException.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.responseFailed(call, iOException);
            }
        }

        @Override // okhttp3.EventListener
        public final void responseHeadersEnd(Call call, Response response) {
            call.getClass();
            response.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.responseHeadersEnd(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public final void responseHeadersStart(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.responseHeadersStart(call);
            }
        }

        @Override // okhttp3.EventListener
        public final void retryDecision(Call call, IOException iOException, boolean z) {
            call.getClass();
            iOException.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.retryDecision(call, iOException, z);
            }
        }

        @Override // okhttp3.EventListener
        public final void satisfactionFailure(Call call, Response response) {
            call.getClass();
            response.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.satisfactionFailure(call, response);
            }
        }

        @Override // okhttp3.EventListener
        public final void secureConnectEnd(Call call, Handshake handshake) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.secureConnectEnd(call, handshake);
            }
        }

        @Override // okhttp3.EventListener
        public final void secureConnectStart(Call call) {
            call.getClass();
            for (EventListener eventListener : this.l) {
                eventListener.secureConnectStart(call);
            }
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Lokhttp3/EventListener$Factory;", "", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Factory {
        EventListener create(Call call);
    }

    public void cacheConditionalHit(Call call, Response response) {
        call.getClass();
        response.getClass();
    }

    public void cacheHit(Call call, Response response) {
        call.getClass();
        response.getClass();
    }

    public void cacheMiss(Call call) {
        call.getClass();
    }

    public void callEnd(Call call) {
        call.getClass();
    }

    public void callFailed(Call call, IOException iOException) {
        call.getClass();
        iOException.getClass();
    }

    public void callStart(Call call) {
        call.getClass();
    }

    public void canceled(Call call) {
        call.getClass();
    }

    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        call.getClass();
        inetSocketAddress.getClass();
        proxy.getClass();
    }

    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException iOException) {
        call.getClass();
        inetSocketAddress.getClass();
        proxy.getClass();
        iOException.getClass();
    }

    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        call.getClass();
        inetSocketAddress.getClass();
        proxy.getClass();
    }

    public void connectionAcquired(Call call, Connection connection) {
        call.getClass();
        connection.getClass();
    }

    public void connectionReleased(Call call, Connection connection) {
        call.getClass();
        connection.getClass();
    }

    public void dispatcherQueueEnd(Call call, Dispatcher dispatcher) {
        call.getClass();
        dispatcher.getClass();
    }

    public void dispatcherQueueStart(Call call, Dispatcher dispatcher) {
        call.getClass();
        dispatcher.getClass();
    }

    public void dnsEnd(Call call, String str, List list) {
        call.getClass();
        str.getClass();
        list.getClass();
    }

    public void dnsStart(Call call, String str) {
        call.getClass();
        str.getClass();
    }

    public void followUpDecision(Call call, Response networkResponse, Request nextRequest) {
        call.getClass();
        networkResponse.getClass();
    }

    public final EventListener plus(EventListener other) {
        other.getClass();
        EventListener eventListener = NONE;
        if (this == eventListener) {
            return other;
        }
        EventListener[] eventListenerArr = this instanceof AggregateEventListener ? ((AggregateEventListener) this).l : new EventListener[]{this};
        if (other == eventListener) {
            return this;
        }
        return new AggregateEventListener((EventListener[]) ArraysKt.N(eventListenerArr, other instanceof AggregateEventListener ? ((AggregateEventListener) other).l : new EventListener[]{other}));
    }

    public void proxySelectEnd(Call call, HttpUrl httpUrl, List list) {
        call.getClass();
        httpUrl.getClass();
        list.getClass();
    }

    public void proxySelectStart(Call call, HttpUrl httpUrl) {
        call.getClass();
        httpUrl.getClass();
    }

    public void requestBodyEnd(Call call, long j2) {
        call.getClass();
    }

    public void requestBodyStart(Call call) {
        call.getClass();
    }

    public void requestFailed(Call call, IOException iOException) {
        call.getClass();
        iOException.getClass();
    }

    public void requestHeadersEnd(Call call, Request request) {
        call.getClass();
        request.getClass();
    }

    public void requestHeadersStart(Call call) {
        call.getClass();
    }

    public void responseBodyEnd(Call call, long j2) {
        call.getClass();
    }

    public void responseBodyStart(Call call) {
        call.getClass();
    }

    public void responseFailed(Call call, IOException iOException) {
        call.getClass();
        iOException.getClass();
    }

    public void responseHeadersEnd(Call call, Response response) {
        call.getClass();
        response.getClass();
    }

    public void responseHeadersStart(Call call) {
        call.getClass();
    }

    public void retryDecision(Call call, IOException exception, boolean retry) {
        call.getClass();
        exception.getClass();
    }

    public void satisfactionFailure(Call call, Response response) {
        call.getClass();
        response.getClass();
    }

    public void secureConnectEnd(Call call, Handshake handshake) {
        call.getClass();
    }

    public void secureConnectStart(Call call) {
        call.getClass();
    }
}
