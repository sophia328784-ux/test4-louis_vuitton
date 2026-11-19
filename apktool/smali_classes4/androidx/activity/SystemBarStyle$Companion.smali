.class public final Landroidx/activity/SystemBarStyle$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/SystemBarStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Landroidx/activity/SystemBarStyle$Companion;",
        "",
        "activity"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/activity/SystemBarStyle;
    .locals 6

    new-instance v0, Landroidx/activity/SystemBarStyle;

    new-instance v4, Ll01;

    const/16 v1, 0x19

    invoke-direct {v4, v1}, Ll01;-><init>(I)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroidx/activity/SystemBarStyle;-><init>(IIILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static b(II)Landroidx/activity/SystemBarStyle;
    .locals 6

    new-instance v0, Landroidx/activity/SystemBarStyle;

    new-instance v4, Ll01;

    const/16 v1, 0x18

    invoke-direct {v4, v1}, Ll01;-><init>(I)V

    const/4 v5, 0x0

    const/4 v3, 0x1

    move v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroidx/activity/SystemBarStyle;-><init>(IIILkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
