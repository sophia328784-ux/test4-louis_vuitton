.class public final Lcom/sightcall/mediacapture/presenter/CameraActionsState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/presenter/CameraActionsState;",
        "",
        "mainAction",
        "Lcom/sightcall/mediacapture/presenter/CameraAction;",
        "sideAction",
        "isRecoding",
        "",
        "isMaxDuration",
        "<init>",
        "(Lcom/sightcall/mediacapture/presenter/CameraAction;Lcom/sightcall/mediacapture/presenter/CameraAction;ZZ)V",
        "getMainAction",
        "()Lcom/sightcall/mediacapture/presenter/CameraAction;",
        "getSideAction",
        "()Z",
        "lib_release"
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
.field private final isMaxDuration:Z

.field private final isRecoding:Z

.field private final mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

.field private final sideAction:Lcom/sightcall/mediacapture/presenter/CameraAction;


# direct methods
.method public constructor <init>(Lcom/sightcall/mediacapture/presenter/CameraAction;Lcom/sightcall/mediacapture/presenter/CameraAction;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    iput-object p2, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->sideAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    iput-boolean p3, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isRecoding:Z

    iput-boolean p4, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isMaxDuration:Z

    return-void
.end method


# virtual methods
.method public final getMainAction()Lcom/sightcall/mediacapture/presenter/CameraAction;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->mainAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    return-object p0
.end method

.method public final getSideAction()Lcom/sightcall/mediacapture/presenter/CameraAction;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->sideAction:Lcom/sightcall/mediacapture/presenter/CameraAction;

    return-object p0
.end method

.method public final isMaxDuration()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isMaxDuration:Z

    return p0
.end method

.method public final isRecoding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/mediacapture/presenter/CameraActionsState;->isRecoding:Z

    return p0
.end method
