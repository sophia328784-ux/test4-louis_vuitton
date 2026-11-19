.class public final Lcom/google/android/gms/maps/model/StrokeStyle$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/StrokeStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Lcom/google/android/gms/maps/model/StampStyle;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/StrokeStyle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/google/android/gms/maps/model/StrokeStyle;->b:F

    iput v0, p0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->a:F

    iget v0, p1, Lcom/google/android/gms/maps/model/StrokeStyle;->d:I

    iget v1, p1, Lcom/google/android/gms/maps/model/StrokeStyle;->c:I

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->b:I

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->c:I

    iget-boolean v0, p1, Lcom/google/android/gms/maps/model/StrokeStyle;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->d:Z

    iget-object p1, p1, Lcom/google/android/gms/maps/model/StrokeStyle;->f:Lcom/google/android/gms/maps/model/StampStyle;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->e:Lcom/google/android/gms/maps/model/StampStyle;

    return-void
.end method
