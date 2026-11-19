.class public Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Setting"
.end annotation


# static fields
.field public static final k:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

.field public final i:I

.field public final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->b:Ljava/lang/String;

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->f:Ljava/lang/String;

    new-instance p1, Lg7;

    const/16 p2, 0x12

    invoke-direct {p1, p2}, Lg7;-><init>(I)V

    invoke-static {p7, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->c(Ljava/util/List;Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Ljava/util/AbstractList;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object p8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    iput p9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->i:I

    iput p10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)V
    .locals 11

    .line 39
    iget v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->c:Ljava/lang/String;

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->e:Ljava/lang/String;

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->f:Ljava/lang/String;

    iget-object v7, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object v8, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    iget v9, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->i:I

    iget v10, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;",
            ">;",
            "Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;",
            "II)V"
        }
    .end annotation

    .line 40
    const/4 v1, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;II)V

    return-void
.end method
