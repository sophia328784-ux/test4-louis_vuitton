.class public final synthetic Ljq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

.field public final synthetic d:Lcom/dynatrace/android/agent/data/Session;


# direct methods
.method public synthetic constructor <init>(Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/android/agent/data/Session;I)V
    .locals 0

    iput p3, p0, Ljq;->b:I

    iput-object p1, p0, Ljq;->c:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iput-object p2, p0, Ljq;->d:Lcom/dynatrace/android/agent/data/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;)Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;
    .locals 2

    iget v0, p0, Ljq;->b:I

    iget-object v1, p0, Ljq;->d:Lcom/dynatrace/android/agent/data/Session;

    iget-object p0, p0, Ljq;->c:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    invoke-static {p1, p0, v1, v0}, Lcom/dynatrace/android/agent/Core;->c(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/android/agent/data/Session;Z)V

    return-object p1

    :pswitch_0
    const/4 v0, 0x0

    invoke-static {p1, p0, v1, v0}, Lcom/dynatrace/android/agent/Core;->c(Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/android/agent/data/Session;Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
