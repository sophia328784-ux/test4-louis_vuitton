.class Lcom/sightcall/universal/internal/ui/CallActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/ui/AcceptDenyDialog$OnAcceptDenyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/ui/CallActivity;->startStopCamera(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

.field final synthetic val$video:Lnet/rtccloud/sdk/VideoModule;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallActivity;Lnet/rtccloud/sdk/VideoModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$6;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    iput-object p2, p0, Lcom/sightcall/universal/internal/ui/CallActivity$6;->val$video:Lnet/rtccloud/sdk/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$6;->val$video:Lnet/rtccloud/sdk/VideoModule;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/VideoModule;->start()V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/ui/CallActivity$6;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {v1}, Lcom/sightcall/universal/internal/ui/CallActivity;->a0(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/model/Session;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onCameraStarted(Lcom/sightcall/universal/model/Session;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/ui/CallActivity$6;->this$0:Lcom/sightcall/universal/internal/ui/CallActivity;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/CallActivity;->Z(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/internal/ui/CallViewModel;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/ui/CallViewModel;->setShouldRestartCamera(Z)V

    return-void
.end method

.method public onDeny()V
    .locals 0

    return-void
.end method
