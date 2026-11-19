.class public abstract Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/google/firebase/components/Component;
    .locals 4

    new-instance v0, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumerComponent$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/google/firebase/heartbeatinfo/HeartBeatConsumer;

    invoke-static {v1}, Lcom/google/firebase/components/Component;->b(Ljava/lang/Class;)Lcom/google/firebase/components/Component$Builder;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/firebase/components/Component$Builder;->e:I

    new-instance v2, Lym;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lym;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v1, Lcom/google/firebase/components/Component$Builder;->f:Lcom/google/firebase/components/ComponentFactory;

    invoke-virtual {v1}, Lcom/google/firebase/components/Component$Builder;->b()Lcom/google/firebase/components/Component;

    move-result-object v0

    return-object v0
.end method
