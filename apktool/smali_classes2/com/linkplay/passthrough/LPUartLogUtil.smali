.class public Lcom/linkplay/passthrough/LPUartLogUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UART_LOG_TAG:Ljava/lang/String; = "UartPresenter"

.field public static mCallback:Lcom/linkplay/passthrough/ILPUartLogCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Lcom/linkplay/passthrough/ILPUartLogCallback;)V
    .locals 0

    sput-object p0, Lcom/linkplay/passthrough/LPUartLogUtil;->mCallback:Lcom/linkplay/passthrough/ILPUartLogCallback;

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "e"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "UartPresenter"

    if-nez p2, :cond_3

    const-string p2, "i"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/linkplay/passthrough/LPUartLogUtil;->mCallback:Lcom/linkplay/passthrough/ILPUartLogCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, p1}, Lcom/linkplay/passthrough/ILPUartLogCallback;->uart_log_i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object p0, Lcom/linkplay/passthrough/LPUartLogUtil;->mCallback:Lcom/linkplay/passthrough/ILPUartLogCallback;

    if-eqz p0, :cond_2

    invoke-interface {p0, v0, p1}, Lcom/linkplay/passthrough/ILPUartLogCallback;->uart_log_i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-object p0, Lcom/linkplay/passthrough/LPUartLogUtil;->mCallback:Lcom/linkplay/passthrough/ILPUartLogCallback;

    if-eqz p0, :cond_4

    invoke-interface {p0, v0, p1}, Lcom/linkplay/passthrough/ILPUartLogCallback;->uart_log_e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
