.class public final Lcom/google/android/gms/maps/model/PolylineOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/PolylineOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/List;

.field public final c:F

.field public final d:I

.field public final e:F

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Lcom/google/android/gms/maps/model/Cap;

.field public final j:Lcom/google/android/gms/maps/model/Cap;

.field public final k:I

.field public final l:Ljava/util/List;

.field public final m:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/zzu;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzu;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolylineOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->h:Z

    .line 80
    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->i:Lcom/google/android/gms/maps/model/Cap;

    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    .line 81
    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->j:Lcom/google/android/gms/maps/model/Cap;

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 82
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->m:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 83
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;FIFZZZLcom/google/android/gms/maps/model/Cap;Lcom/google/android/gms/maps/model/Cap;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->h:Z

    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->i:Lcom/google/android/gms/maps/model/Cap;

    new-instance v1, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->j:Lcom/google/android/gms/maps/model/Cap;

    iput v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->l:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->m:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    iput p3, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    iput p4, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    iput-boolean p5, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    iput-boolean p6, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->h:Z

    if-eqz p8, :cond_0

    iput-object p8, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->i:Lcom/google/android/gms/maps/model/Cap;

    :cond_0
    if-eqz p9, :cond_1

    iput-object p9, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->j:Lcom/google/android/gms/maps/model/Cap;

    :cond_1
    iput p10, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->k:I

    iput-object p11, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->l:Ljava/util/List;

    if-eqz p12, :cond_2

    iput-object p12, p0, Lcom/google/android/gms/maps/model/PolylineOptions;->m:Ljava/util/List;

    :cond_2
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0x4f45

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(ILandroid/os/Parcel;)I

    move-result v3

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->b:Ljava/util/List;

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->o(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-static {v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget v4, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->c:F

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-static {v1, v5, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget v7, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->d:I

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v7, 0x5

    invoke-static {v1, v7, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget v7, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->e:F

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    const/4 v7, 0x6

    invoke-static {v1, v7, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-boolean v7, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->f:Z

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v8, 0x7

    invoke-static {v1, v8, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-boolean v8, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->g:Z

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v8, 0x8

    invoke-static {v1, v8, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget-boolean v8, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->h:Z

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v8, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->i:Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/model/Cap;->W1()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v8

    const/16 v9, 0x9

    invoke-static {v1, v9, v8, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v8, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->j:Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {v8}, Lcom/google/android/gms/maps/model/Cap;->W1()Lcom/google/android/gms/maps/model/Cap;

    move-result-object v8

    const/16 v9, 0xa

    invoke-static {v1, v9, v8, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->j(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v2, 0xb

    invoke-static {v1, v2, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;II)V

    iget v2, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->k:I

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0xc

    iget-object v5, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->l:Ljava/util/List;

    invoke-static {v1, v2, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->o(Landroid/os/Parcel;ILjava/util/List;Z)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/PolylineOptions;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/maps/model/StyleSpan;

    new-instance v8, Lcom/google/android/gms/maps/model/StyleSpan;

    new-instance v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;

    iget-object v10, v5, Lcom/google/android/gms/maps/model/StyleSpan;->b:Lcom/google/android/gms/maps/model/StrokeStyle;

    invoke-direct {v9, v10}, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;-><init>(Lcom/google/android/gms/maps/model/StrokeStyle;)V

    iput v4, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->a:F

    iput-boolean v7, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->d:Z

    new-instance v11, Lcom/google/android/gms/maps/model/StrokeStyle;

    iget v12, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->a:F

    iget v13, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->b:I

    iget v14, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->c:I

    iget-boolean v15, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->d:Z

    iget-object v9, v9, Lcom/google/android/gms/maps/model/StrokeStyle$Builder;->e:Lcom/google/android/gms/maps/model/StampStyle;

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/google/android/gms/maps/model/StrokeStyle;-><init>(FIIZLcom/google/android/gms/maps/model/StampStyle;)V

    iget-wide v9, v5, Lcom/google/android/gms/maps/model/StyleSpan;->c:D

    invoke-direct {v8, v11, v9, v10}, Lcom/google/android/gms/maps/model/StyleSpan;-><init>(Lcom/google/android/gms/maps/model/StrokeStyle;D)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    invoke-static {v1, v0, v2, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->o(Landroid/os/Parcel;ILjava/util/List;Z)V

    invoke-static {v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->r(ILandroid/os/Parcel;)V

    return-void
.end method
