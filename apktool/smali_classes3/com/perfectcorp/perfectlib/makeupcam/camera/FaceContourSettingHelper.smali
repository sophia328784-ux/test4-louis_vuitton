.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;)Ljava/util/List;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->j:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;
    .locals 0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    return-object p0
.end method

.method public static d(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)I
    .locals 2

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->c(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v1, p1, :cond_0

    iget p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    return p0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourSettingHelper;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne v0, p1, :cond_2

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->a:I

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method
