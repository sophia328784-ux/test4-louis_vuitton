.class public final Lcom/google/android/gms/maps/model/StyleSpan;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/StyleSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/gms/maps/model/StrokeStyle;

.field public final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StyleSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 48
    sget-object v0, Lcom/google/android/gms/maps/model/StrokeStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    new-instance v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->b:I

    iput p1, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->c:I

    .line 52
    new-instance v1, Lcom/google/android/gms/maps/model/StrokeStyle;

    iget v2, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->a:F

    iget v3, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->b:I

    iget v4, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->c:I

    iget-boolean v5, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->d:Z

    iget-object v6, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->e:Lcom/google/android/gms/maps/model/StampStyle;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/maps/model/StrokeStyle;-><init>(FIIZLcom/google/android/gms/maps/model/StampStyle;)V

    .line 53
    iput-object v1, p0, Lcom/google/android/gms/maps/model/StyleSpan;->b:Lcom/google/android/gms/maps/model/StrokeStyle;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/StyleSpan;->c:D

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/maps/model/StrokeStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput p1, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->b:I

    iput p1, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->c:I

    new-instance v1, Lcom/google/android/gms/maps/model/StrokeStyle;

    iget v2, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->a:F

    iget v3, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->b:I

    iget v4, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->c:I

    iget-boolean v5, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->d:Z

    iget-object v6, v0, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->e:Lcom/google/android/gms/maps/model/StampStyle;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/maps/model/StrokeStyle;-><init>(FIIZLcom/google/android/gms/maps/model/StampStyle;)V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/StyleSpan;->b:Lcom/google/android/gms/maps/model/StrokeStyle;

    iput-wide p2, p0, Lcom/google/android/gms/maps/model/StyleSpan;->c:D

    return-void

    :cond_0
    const-string p0, "A style must be applied to some segments on a polyline."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/StrokeStyle;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/model/StyleSpan;->b:Lcom/google/android/gms/maps/model/StrokeStyle;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/StyleSpan;->c:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/StrokeStyle;D)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/google/android/gms/maps/model/StyleSpan;->b:Lcom/google/android/gms/maps/model/StrokeStyle;

    iput-wide p2, p0, Lcom/google/android/gms/maps/model/StyleSpan;->c:D

    return-void

    .line 57
    :cond_0
    const-string p0, "A style must be applied to some segments on a polyline."

    .line 58
    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/maps/model/StyleSpan;->b:Lcom/google/android/gms/maps/model/StrokeStyle;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x8

    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/StyleSpan;->c:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method
