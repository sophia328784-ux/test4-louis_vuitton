.class public final Landroidx/camera/core/ViewPort$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ViewPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field public final b:Landroid/util/Rational;

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/util/Rational;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/camera/core/ViewPort$Builder;->a:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/camera/core/ViewPort$Builder;->d:I

    iput-object p1, p0, Landroidx/camera/core/ViewPort$Builder;->b:Landroid/util/Rational;

    iput p2, p0, Landroidx/camera/core/ViewPort$Builder;->c:I

    return-void
.end method
