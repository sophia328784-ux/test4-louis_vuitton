.class public final Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1;->emit(Lcom/sightcall/pratik/Result;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1",
        "Ljava/util/TimerTask;",
        "",
        "run",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1;->this$0:Lcom/sightcall/universal/internal/ui/CallViewModel;

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->access$getGpsRepository$p(Lcom/sightcall/universal/internal/ui/CallViewModel;)Lcom/sightcall/gpslocation/GpsRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/gpslocation/GpsRepository;->stopGPS()V

    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    return-void
.end method
