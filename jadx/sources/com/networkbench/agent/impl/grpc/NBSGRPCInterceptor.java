package com.networkbench.agent.impl.grpc;

import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.session.ISpan;
import com.networkbench.agent.impl.session.SpanStatus;
import io.grpc.CallOptions;
import io.grpc.Channel;
import io.grpc.ClientCall;
import io.grpc.ClientInterceptor;
import io.grpc.ClientInterceptors;
import io.grpc.ForwardingClientCall;
import io.grpc.ForwardingClientCallListener;
import io.grpc.Metadata;
import io.grpc.MethodDescriptor;
import io.grpc.Status;

/* JADX INFO: loaded from: classes2.dex */
public class NBSGRPCInterceptor implements ClientInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static e f37198a = f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ISpan f37199b;

    public Channel intercept(Channel channel) {
        return ClientInterceptors.intercept(channel, new ClientInterceptor[]{this});
    }

    public <ReqT, RespT> ClientCall<ReqT, RespT> interceptCall(MethodDescriptor<ReqT, RespT> methodDescriptor, CallOptions callOptions, Channel channel) {
        f37198a.a("ClientCall method:" + methodDescriptor.getServiceName() + ", method.toString:" + methodDescriptor.toString());
        ISpan iSpanStartTransaction = NBSAppAgent.startTransaction("grpc", "grpc request");
        this.f37199b = iSpanStartTransaction;
        final ISpan iSpanStartChild = iSpanStartTransaction.startChild("grpc request begin", "grpc request begin");
        iSpanStartChild.setTag("fullMethodName", methodDescriptor.getFullMethodName());
        iSpanStartChild.setTag("bareMethodName", methodDescriptor.getBareMethodName());
        iSpanStartChild.setTag("serviceName", methodDescriptor.getServiceName());
        return new ForwardingClientCall.SimpleForwardingClientCall<ReqT, RespT>(channel.newCall(methodDescriptor, callOptions)) { // from class: com.networkbench.agent.impl.grpc.NBSGRPCInterceptor.1
            public void cancel(String str, Throwable th) {
                NBSGRPCInterceptor.f37198a.a("ClientCall cancel");
                super.cancel(str, th);
            }

            public void halfClose() {
                NBSGRPCInterceptor.f37198a.a("ClientCall halfClose");
                super.halfClose();
            }

            public boolean isReady() {
                NBSGRPCInterceptor.f37198a.a("ClientCall isReady");
                return super.isReady();
            }

            public void request(int i2) {
                NBSGRPCInterceptor.f37198a.a("ClientCall request numMsg:" + i2);
                super.request(i2);
            }

            public void sendMessage(ReqT reqt) {
                NBSGRPCInterceptor.f37198a.a("ClientCall 2222");
                super.sendMessage(reqt);
            }

            public void start(ClientCall.Listener<RespT> listener, Metadata metadata) {
                ForwardingClientCallListener.SimpleForwardingClientCallListener<RespT> simpleForwardingClientCallListener = new ForwardingClientCallListener.SimpleForwardingClientCallListener<RespT>(listener) { // from class: com.networkbench.agent.impl.grpc.NBSGRPCInterceptor.1.1
                    public void onClose(Status status, Metadata metadata2) {
                        NBSGRPCInterceptor.f37198a.a("tracingResponseListener onClose status:" + status.toString() + ", trailers:" + metadata2.toString());
                        super.onClose(status, metadata2);
                        Status.Code code = status.getCode();
                        Status.Code code2 = Status.Code.OK;
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        if (code != code2) {
                            iSpanStartChild.setData("error", status.getCode());
                            iSpanStartChild.finish(SpanStatus.SPAN_STATUS_UNKNOWN);
                        } else {
                            iSpanStartChild.finish();
                        }
                        iSpanStartChild.getTransaction().finish();
                    }

                    public void onHeaders(Metadata metadata2) {
                        NBSGRPCInterceptor.f37198a.a("tracingResponseListener onHeaders:" + metadata2.toString());
                        super.onHeaders(metadata2);
                    }

                    public void onMessage(RespT respt) {
                        NBSGRPCInterceptor.f37198a.a("tracingResponseListener onMessage:".concat(respt.getClass().getName()));
                        iSpanStartChild.setTag("onMessage", respt.getClass().getName());
                        super.onMessage(respt);
                    }

                    public void onReady() {
                        NBSGRPCInterceptor.f37198a.a("tracingResponseListener onReady");
                        super.onReady();
                    }
                };
                NBSGRPCInterceptor.f37198a.a("ClientCall start begin headres:" + metadata.toString());
                super.start(simpleForwardingClientCallListener, metadata);
                NBSGRPCInterceptor.f37198a.a("ClientCall start end");
            }
        };
    }
}
