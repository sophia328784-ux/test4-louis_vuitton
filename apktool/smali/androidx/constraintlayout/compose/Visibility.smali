.class public final Landroidx/constraintlayout/compose/Visibility;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/compose/Visibility$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/constraintlayout/compose/Visibility;",
        "",
        "",
        "name",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "constraintlayout-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Landroidx/constraintlayout/compose/Visibility$Companion;

.field public static final c:Landroidx/constraintlayout/compose/Visibility;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/compose/Visibility$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/Visibility$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/constraintlayout/compose/Visibility;->b:Landroidx/constraintlayout/compose/Visibility$Companion;

    new-instance v0, Landroidx/constraintlayout/compose/Visibility;

    const-string v1, "visible"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/Visibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/constraintlayout/compose/Visibility;->c:Landroidx/constraintlayout/compose/Visibility;

    new-instance v0, Landroidx/constraintlayout/compose/Visibility;

    const-string v1, "invisible"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/Visibility;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroidx/constraintlayout/compose/Visibility;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/Visibility;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/compose/Visibility;->a:Ljava/lang/String;

    return-void
.end method
