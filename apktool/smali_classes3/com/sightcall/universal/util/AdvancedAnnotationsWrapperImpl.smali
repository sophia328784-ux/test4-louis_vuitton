.class public final Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\rH\u0016J\u0008\u0010\u0019\u001a\u00020\u000fH\u0016J\u0008\u0010\u001a\u001a\u00020\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
        "advancedAnnotationsAPI",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
        "sessionConfig",
        "Lcom/sightcall/universal/model/Config;",
        "<init>",
        "(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)V",
        "processTouch",
        "",
        "touch",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;",
        "fromView",
        "Landroid/view/View;",
        "processDeleteAll",
        "",
        "selectStandaloneMode",
        "anchor",
        "",
        "mode",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;",
        "resumeAnnotations",
        "pauseAnnotations",
        "layoutOver",
        "view",
        "enableLocalTouch",
        "disableLocalTouch",
        "getAnchor",
        "()Ljava/lang/Object;",
        "setAnchor",
        "(Ljava/lang/Object;)V",
        "sdk_installedRelease"
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
.field private final advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

.field private anchor:Ljava/lang/Object;

.field private final sessionConfig:Lcom/sightcall/universal/model/Config;


# direct methods
.method public constructor <init>(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;Lcom/sightcall/universal/model/Config;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    iput-object p2, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->sessionConfig:Lcom/sightcall/universal/model/Config;

    return-void
.end method


# virtual methods
.method public disableLocalTouch()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->disableLocalTouch()V

    return-void
.end method

.method public enableLocalTouch()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->enableLocalTouch()V

    return-void
.end method

.method public getAnchor()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->anchor:Ljava/lang/Object;

    return-object p0
.end method

.method public layoutOver(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->getAnchor()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->getContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sightcall/universal/internal/util/Views;->layoutOver(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public pauseAnnotations(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->getAnchor()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->pauseAnnotations()V

    :cond_0
    return-void
.end method

.method public processDeleteAll()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->sessionConfig:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->processDeleteAll()V

    :cond_0
    return-void
.end method

.method public processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->sessionConfig:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/model/Session$Role;->ATTENDEE:Lcom/sightcall/universal/model/Session$Role;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0, p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public resumeAnnotations(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->getAnchor()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->resumeAnnotations()V

    :cond_0
    return-void
.end method

.method public selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->getAnchor()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->advancedAnnotationsAPI:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-interface {p1, p2}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->selectStandaloneMode(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p1

    iget-object p0, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->sessionConfig:Lcom/sightcall/universal/model/Config;

    invoke-interface {p1, p0}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onAnnotationsModeChanged(Lcom/sightcall/universal/model/Config;)V

    :cond_0
    return-void
.end method

.method public setAnchor(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/util/AdvancedAnnotationsWrapperImpl;->anchor:Ljava/lang/Object;

    return-void
.end method
