.class public final Lnet/rtccloud/sdk/event/util/ExceptionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Ex:",
        "Ljava/lang/Exception;",
        "Ev:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final event:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEv;"
        }
    .end annotation
.end field

.field private final exception:Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEx;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEx;TEv;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->exception:Ljava/lang/Exception;

    iput-object p2, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->event:Ljava/lang/Object;

    iput-object p3, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->method:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->target:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public event()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEv;"
        }
    .end annotation

    iget-object p0, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->event:Ljava/lang/Object;

    return-object p0
.end method

.method public exception()Ljava/lang/Exception;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEx;"
        }
    .end annotation

    iget-object p0, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public method()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public target()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->target:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExceptionEvent{exception="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->event:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/rtccloud/sdk/event/util/ExceptionEvent;->target:Ljava/lang/Object;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Lo60;->r(Ljava/lang/StringBuilder;Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
