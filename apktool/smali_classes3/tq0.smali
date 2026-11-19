.class public final synthetic Ltq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lrp0;


# direct methods
.method public synthetic constructor <init>(Lrp0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq0;->a:Lrp0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltq0;->a:Lrp0;

    invoke-static {p0, p1}, Lcom/sightcall/pratik/mappers/PushNotificationPayloadMappersKt;->b(Lrp0;Ljava/lang/Object;)V

    return-void
.end method
