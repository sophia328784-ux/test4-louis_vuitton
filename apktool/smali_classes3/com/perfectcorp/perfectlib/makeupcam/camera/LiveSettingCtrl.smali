.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

.field public final b:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

.field public final c:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

.field public final d:Ljava/util/EnumSet;

.field public final e:Ljava/util/EnumMap;

.field public final f:Ljava/util/EnumMap;

.field public final g:Ljava/util/EnumMap;

.field public final h:Ljava/util/EnumMap;

.field public final i:Ljava/util/EnumMap;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;

.field public final m:Ljava/util/concurrent/ConcurrentHashMap;

.field public volatile n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

.field public o:I

.field public final p:Ljava/util/EnumMap;

.field public final q:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->a:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->b:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    new-instance v0, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->c:Lcom/perfectcorp/perfectlib/ymk/engine/MutableInteger;

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->g:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->i:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->n:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p:Ljava/util/EnumMap;

    new-instance v1, Ljava/util/EnumMap;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->q:Ljava/util/EnumMap;

    return-void
.end method

.method public static c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/m;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x32

    return p0

    :pswitch_0
    const/16 p0, 0x2d

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_2
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->ORIGINAL:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->a()I

    move-result p0

    return p0

    :pswitch_3
    const/16 p0, 0x28

    return p0

    :pswitch_4
    const/16 p0, 0x4b

    return p0

    :pswitch_5
    const/16 p0, 0x19

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final d()Ljava/util/EnumSet;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->h:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->f:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final i(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    return-object p0
.end method

.method public final j(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->i:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, -0x3e8

    return p0
.end method

.method public final l(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final m(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->q:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final n(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->g:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final p(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Z
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d:Ljava/util/EnumSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-eq p1, p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    if-ne p0, p2, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    monitor-exit v0

    return v2

    :cond_3
    monitor-exit v0

    return v3

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
