.class public final Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/DefaultMediaNotificationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Los;

.field public final c:I

.field public d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->a:Landroid/content/Context;

    new-instance p1, Los;

    const/16 v0, 0x1a

    invoke-direct {p1, v0}, Los;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->b:Los;

    sget-object p1, Landroidx/media3/session/DefaultMediaNotificationProvider;->j:Lcom/google/common/base/Supplier;

    const p1, 0x7f1406f2

    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;->c:I

    return-void
.end method
