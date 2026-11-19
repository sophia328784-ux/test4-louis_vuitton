.class abstract Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;
.super Lcom/perfectcorp/perfectlib/NailVtoApplier;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public final c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

.field public j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->d:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    const-string p2, "#downloadTaskExecutor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    const-string p2, "#applyTaskExecutor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->b(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    return-void
.end method

.method public static b(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)F
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->z:F

    return p0

    :cond_0
    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->y:F

    return p0

    :cond_2
    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->x:F

    return p0

    :cond_3
    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->w:F

    return p0

    :cond_4
    iget p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->v:F

    return p0
.end method

.method public static c(Lcom/perfectcorp/perfectlib/NailPosition;)I
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl$1;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishCream:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    :goto_1
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->ordinal()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "PearlV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "TexturedV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_2
    const-string v0, "Sheer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "Matte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "Jelly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_5
    const-string v0, "JellyV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_6
    const-string v0, "Metallic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_7
    const-string v0, "SheerV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_8
    const-string v0, "MetallicV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_9
    const-string v0, "ShimmerFineV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_a
    const-string v0, "ShimmerCoarseV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_2

    :cond_b
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_b
    const-string v0, "MatteV2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishPearl:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_1
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishTextured:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_2
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishJelly:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_3
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishSheer:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_4
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishMetallic:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_5
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishShimmerFine:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_6
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishShimmerCoarse:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :pswitch_7
    sget-object p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;->NailFinishMatte:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailFinishType;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x6aa131f3 -> :sswitch_b
        -0x68c99c74 -> :sswitch_a
        -0x4d5879e9 -> :sswitch_9
        -0x2b35dee5 -> :sswitch_8
        -0x2223e367 -> :sswitch_7
        -0x16f455c1 -> :sswitch_6
        -0x2f49526 -> :sswitch_5
        0x44257be -> :sswitch_4
        0x46aebb1 -> :sswitch_3
        0x4c26d3d -> :sswitch_2
        0x1f15af25 -> :sswitch_1
        0x39d85542 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Ljava/util/List;Z)Landroid/util/Pair;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->subscribeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/l;

    const/4 v1, 0x6

    invoke-direct {p1, v1, v0}, Lcom/perfectcorp/perfectlib/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lq2;

    invoke-direct {p1, v1, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->j(Ljava/util/List;ZLcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance p1, Lq2;

    const/4 v1, 0x7

    invoke-direct {p1, v1, v0}, Lq2;-><init>(ILjava/util/ArrayList;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0
.end method

.method public static f(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;
    .locals 3

    invoke-virtual {p1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->duplicate()Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    iget v0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->skin_smooth_intensity:I

    iput v0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->skin_smooth_intensity:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->skin_smooth_color_intensity:I

    iput v0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->skin_smooth_color_intensity:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->lookGuid:Ljava/lang/String;

    iput-object v0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->lookGuid:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_art_images:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_art_images:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_art_image_changed:[Z

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_art_image_changed:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_parameter:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipParameter;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_parameter:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipParameter;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_shapes:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_shapes:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_tip_shape_changed:[Z

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_tip_shape_changed:[Z

    aget-boolean v2, v2, v0

    aput-boolean v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_pbr:Z

    return-object p1
.end method

.method public static h(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;)Lcom/perfectcorp/perfectlib/EffectId;
    .locals 4

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->vtoMode:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;->NailTipVTOMode:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->NAIL_TIP:Lcom/perfectcorp/perfectlib/PerfectEffect;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->NAIL:Lcom/perfectcorp/perfectlib/PerfectEffect;

    :goto_0
    new-instance v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->payload:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/camera/a;

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->n:Lcom/perfectcorp/perfectlib/ph/camera/a;

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->skuGuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c:Ljava/lang/String;

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->skuItemGuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->d:Ljava/lang/String;

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->paletteGuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->e:Ljava/lang/String;

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->wearingStyleGuid:Ljava/lang/String;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/EffectId$Builder;->h:Ljava/lang/String;

    iget p0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    rsub-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->b(Ljava/util/List;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->color:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->color:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->color:[I

    const/4 v3, 0x2

    aget p1, p1, v3

    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->c(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Lcom/perfectcorp/perfectlib/ph/camera/a;)Lcom/perfectcorp/perfectlib/ph/camera/a;
    .locals 9

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/ph/camera/a$a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->D:Ljava/lang/String;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->C:Ljava/lang/String;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->A:Ljava/lang/String;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->y:Ljava/lang/String;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->B:Ljava/lang/String;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->z:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v8, -0x1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->v:Ljava/lang/String;

    invoke-static {v8, p0}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_0

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    :cond_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {v8, v7}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_1

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    iput-object v6, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v8, v5}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_3

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {v8, v4}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_4

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {v8, v3}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_5

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->g:I

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v8, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_6

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->h:I

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v8, v1}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result p0

    if-eq p0, v8, :cond_7

    iput p0, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->i:I

    :cond_7
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/camera/a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V

    return-object p0
.end method

.method public static q(ZLcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Ljava/util/List;
    .locals 4

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->THUMB:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->FOREFINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->LITTLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object p1, p1, v2

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;)Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ProductMappingUtility;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1
.end method


# virtual methods
.method public final A()Ljava/util/Map;
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/HandCam;->getVtoMode(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;->NailTipVTOMode:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    if-ne v0, v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->THUMB:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->FOREFINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v2, v3, v2

    iget v2, v2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    rsub-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/perfectcorp/perfectlib/NailPosition;->LITTLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object p0, p0, v2

    iget p0, p0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    rsub-int/lit8 p0, p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public final apply(Lcom/perfectcorp/perfectlib/LookSetting;Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 9

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "lookSetting can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[apply] lookSetting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cacheStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x3

    invoke-static {v8, p2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    if-ne v4, p2, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    new-instance v0, Lcom/perfectcorp/perfectlib/c1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/perfectcorp/perfectlib/c1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p2

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance v0, Lcom/perfectcorp/perfectlib/f3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v5, v2}, Lcom/perfectcorp/perfectlib/f3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/f3;

    invoke-direct {v2, p0, p1, v5, v1}, Lcom/perfectcorp/perfectlib/f3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_1
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/LookSetting;->getLookGuid()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v6, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string p2, "downloadAndApplyLook"

    invoke-direct {v6, p2}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->getInstance()Lcom/perfectcorp/perfectlib/LookHandler;

    move-result-object p2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "[cancelOnReleased] add cancelable \""

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\" to taskDisposables"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/LookHandler;->e:Lcom/perfectcorp/perfectlib/NailLookHandler;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/NailLookHandler;->a:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    new-instance v0, Let;

    const/16 v1, 0x11

    invoke-direct {v0, v6, v1}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "[cancelOnReleased] cancelable \""

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" cancel directly"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, v0, p2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    :goto_2
    new-instance v0, Lcom/perfectcorp/perfectlib/e1;

    const/4 v7, 0x3

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/e1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, v1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    iget-object p2, v1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p2, Lcom/perfectcorp/perfectlib/s0;

    const/4 v0, 0x2

    invoke-direct {p2, v1, p1, v3, v0}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/f3;

    invoke-direct {p1, v1, v3, v5, v0}, Lcom/perfectcorp/perfectlib/f3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/perfectlib/f3;

    invoke-direct {p2, v1, v3, v5, v8}, Lcom/perfectcorp/perfectlib/f3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v0, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v6

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    new-instance p1, Lcom/perfectcorp/perfectlib/f;

    const/4 p2, 0x5

    invoke-direct {p1, v1, p0, v5, p2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method public final apply(Ljava/util/List;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;)Lcom/perfectcorp/perfectlib/Cancelable;
    .locals 7

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "vtoSettings can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    .line 309
    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 p1, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/perfectcorp/perfectlib/PerfectLib;->h:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[apply] copiedVtoSettings="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 310
    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v0, Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;->CACHE_ONLY:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Lcom/perfectcorp/perfectlib/c1;

    invoke-direct {v1, p0, v0, v3, p1}, Lcom/perfectcorp/perfectlib/c1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 312
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    .line 313
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lcom/perfectcorp/perfectlib/h3;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p2, v1}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance v1, Lcom/perfectcorp/perfectlib/h3;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p2, v2}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    .line 314
    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    .line 315
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    :goto_1
    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->cancel()V

    new-instance v5, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    const-string v0, "downloadAndApplySkus"

    invoke-direct {v5, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/SkuHandler;->h(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/m;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/m;-><init>(Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    .line 316
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    .line 317
    iget-object v0, v1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/n;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/perfectcorp/perfectlib/n;-><init>(Ljava/lang/Object;II)V

    .line 318
    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    .line 319
    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/h3;

    const/16 v0, 0xa

    invoke-direct {p1, v1, p2, v0}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/h3;

    const/16 v2, 0xb

    invoke-direct {v0, v1, p2, v2}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    .line 320
    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    .line 321
    iget-object p0, v1, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-object v5

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    new-instance v0, Lcom/perfectcorp/perfectlib/d3;

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/perfectcorp/perfectlib/d3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public final applyEffectIds(Ljava/util/List;ZLcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;)V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "effectIds can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {v0, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Lcom/perfectcorp/perfectlib/g3;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/perfectcorp/perfectlib/g3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Z)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/perfectlib/h3;

    const/4 v0, 0x4

    invoke-direct {p2, p0, p3, v0}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/h3;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p3, v1}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Lcom/perfectcorp/perfectlib/d3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/perfectcorp/perfectlib/d3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    invoke-static {p2}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearAllEffects(Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Lcom/perfectcorp/perfectlib/k0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/perfectlib/k0;-><init>(Ljava/lang/Object;II)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/h3;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/h3;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/perfectlib/d3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/d3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearEffects(Ljava/util/Set;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "nailPositions can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->t(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Lcom/perfectcorp/perfectlib/c1;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v1, p1, v3}, Lcom/perfectcorp/perfectlib/c1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/h3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/h3;

    invoke-direct {v2, p0, p2, v0}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p1

    new-instance v1, Lcom/perfectcorp/perfectlib/d3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perfectcorp/perfectlib/d3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;
    .locals 13

    new-instance v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/e;->n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    invoke-static {}, Lcom/perfectcorp/perfectlib/NailPosition;->values()[Lcom/perfectcorp/perfectlib/NailPosition;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    iget-object v7, v6, Lcom/perfectcorp/perfectlib/NailPosition;->lookString:Ljava/lang/String;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->u:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->g:Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;

    iget-object v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[fillNailFinishSetting][Look] Invalid palette "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v7

    move-object v8, v3

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move v9, v4

    move-object v4, v5

    goto :goto_2

    :cond_2
    move v9, v4

    move-object v4, v10

    :goto_2
    invoke-static {v7}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v2, "[fillNailFinishSetting][Look] No color in paletteGuid="

    const/4 v7, 0x3

    invoke-static {v7, v2, v5, v8}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "[fillNailFinishSetting][Look] No pattern can be found for patternGuid="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->t:Ljava/lang/String;

    sget-object v11, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->c:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->f:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {v11}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b:Ljava/lang/String;

    :goto_3
    new-instance v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/ph/camera/a$a;-><init>()V

    iput-object v6, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->o:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->r:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->p:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->q:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->A:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->g:I

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->B:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->h:I

    iget v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->C:I

    iput v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->i:I

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->s:Ljava/lang/String;

    iput-object v9, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    iput-object v8, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->k:Ljava/lang/String;

    iput-object v10, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->l:Ljava/lang/String;

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->u:Ljava/lang/String;

    iput-object v8, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->m:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)F

    move-result v6

    iput v6, v2, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->n:F

    new-instance v6, Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-direct {v6, v2}, Lcom/perfectcorp/perfectlib/ph/camera/a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V

    invoke-static {v0, v6}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Lcom/perfectcorp/perfectlib/ph/camera/a;)Lcom/perfectcorp/perfectlib/ph/camera/a;

    move-result-object v2

    goto/16 :goto_9

    :cond_5
    const-string p0, "No pattern masks in patternGuid="

    invoke-static {p0, v2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_6
    sget-object v8, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->f:Ljava/lang/String;

    const-class v11, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-virtual {v8, v2, v11}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    if-eqz v2, :cond_b

    new-instance v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/ph/camera/a$a;-><init>()V

    iput-object v6, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v7, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    iput-object v7, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->transparency:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v9

    goto :goto_5

    :cond_7
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->transparency:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v6

    :goto_5
    iput v6, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->roughness:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v6, v9

    goto :goto_6

    :cond_8
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->roughness:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v6

    :goto_6
    iput v6, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->reflection:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v9

    goto :goto_7

    :cond_9
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->reflection:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v6

    :goto_7
    iput v6, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->contrast:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v9

    goto :goto_8

    :cond_a
    iget-object v6, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->contrast:Ljava/lang/String;

    invoke-static {v9, v6}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v6

    :goto_8
    iput v6, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->finishType:Ljava/lang/String;

    iput-object v2, v8, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-direct {v2, v8}, Lcom/perfectcorp/perfectlib/ph/camera/a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->i(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;Lcom/perfectcorp/perfectlib/ph/camera/a;)Lcom/perfectcorp/perfectlib/ph/camera/a;

    move-result-object v2

    :goto_9
    const-string v6, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->t(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/camera/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string p0, "No extra info in palette "

    invoke-static {p0, v5}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_c
    move v9, v4

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_d
    return-object v1
.end method

.method public final getEffectIds(Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/j3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/perfectlib/j3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/e3;

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Lcom/perfectcorp/perfectlib/e3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;I)V

    new-instance v3, Lcom/perfectcorp/perfectlib/e3;

    invoke-direct {v3, p0, p1, v2}, Lcom/perfectcorp/perfectlib/e3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$EffectIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/perfectlib/f;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getIntensities(Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/perfectcorp/perfectlib/i;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/i3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/i3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/i3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/i3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/perfectlib/f;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getProductIds(Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/Configuration;->h:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/j3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/perfectcorp/perfectlib/j3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;ZI)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/k3;

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/k3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/k3;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/perfectcorp/perfectlib/k3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ProductIdCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception v0

    new-instance v1, Lcom/perfectcorp/perfectlib/f;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v0, p1, v2}, Lcom/perfectcorp/perfectlib/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic j(ILcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-virtual {p1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->duplicate()Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    sget-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->THUMB:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iput v0, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    :cond_0
    sget-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->FOREFINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iput v0, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    :cond_1
    sget-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->MIDDLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iput v0, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    :cond_2
    sget-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->RING_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iput v0, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    :cond_3
    sget-object v0, Lcom/perfectcorp/perfectlib/NailPosition;->LITTLE_FINGER:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    rsub-int/lit8 p2, p2, 0x64

    iput p2, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    :cond_4
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final k(ILjava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This is not a nail look."

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    iput-object p2, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->lookGuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/HandCam;->validateHandARParameters(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Nails:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->o(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NAIL:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->l(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    const-string p1, "Look guid="

    const-string v0, " is not in database."

    invoke-static {p1, p2, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic l(ILjava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    iput-object p2, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->lookGuid:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/HandCam;->validateHandARParameters(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object p3, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Nails:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {p2, p3, v0}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->o(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic m(ILjava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    invoke-virtual {p0, p2, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->u(Ljava/util/List;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    new-instance p2, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Nails:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    invoke-static {p1, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->o(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {p1, v0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/HandCam;->validateHandARParameters(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    invoke-virtual {p2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic n(ILjava/util/Set;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-virtual {p1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->duplicate()Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c(Lcom/perfectcorp/perfectlib/NailPosition;)I

    move-result v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v0, v1, v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final o(Ljava/util/List;IZ)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 7

    invoke-virtual {p0, p2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    :goto_0
    move-object v0, p0

    goto :goto_3

    :cond_0
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/EffectId;

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/EffectId;->j:Lcom/perfectcorp/perfectlib/NailPosition;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/EffectId;->o:Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/ph/camera/a$a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a;)V

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/EffectId;->i:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    iput v2, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-direct {v2, v0}, Lcom/perfectcorp/perfectlib/ph/camera/a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V

    iget-object v3, p2, Lcom/perfectcorp/perfectlib/EffectId;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/perfectcorp/perfectlib/EffectId;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/perfectcorp/perfectlib/EffectId;->e:Ljava/lang/String;

    iget-object v6, p2, Lcom/perfectcorp/perfectlib/EffectId;->h:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->t(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/camera/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Nails:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object p2, v0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->o(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    if-nez p3, :cond_4

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {v1, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/HandCam;->validateHandARParameters(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    :goto_3
    invoke-virtual {v0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public abstract p(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;
.end method

.method public abstract r()V
.end method

.method public final s(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedDownloadTaskSN("

    const-string v2, ")"

    const-string v3, "currentDownloadTaskSN("

    invoke-static {p0, p1, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->r()V

    const-string v0, "intensities can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;->NOP:Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    :goto_0
    const-class v0, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;->d(Ljava/util/Map;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    new-instance v2, Lcom/perfectcorp/perfectlib/c1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, p1, v3}, Lcom/perfectcorp/perfectlib/c1;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->g:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lcom/perfectcorp/perfectlib/h3;

    invoke-direct {v1, p0, p2, v0}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance v0, Lcom/perfectcorp/perfectlib/h3;

    invoke-direct {v0, p0, p2, v3}, Lcom/perfectcorp/perfectlib/h3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void

    :catchall_0
    move-exception p1

    new-instance v1, Lcom/perfectcorp/perfectlib/d3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perfectcorp/perfectlib/d3;-><init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Ljava/lang/Throwable;Lcom/perfectcorp/perfectlib/NailVtoApplier$ApplyCallback;I)V

    invoke-static {v1}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final t(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/camera/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c(Lcom/perfectcorp/perfectlib/NailPosition;)I

    move-result v0

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_pbr_finish:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_pbr:Z

    iput-object p3, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->skuGuid:Ljava/lang/String;

    iput-object p4, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->skuItemGuid:Ljava/lang/String;

    iput-object p5, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->paletteGuid:Ljava/lang/String;

    iput-object p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->wearingStyleGuid:Ljava/lang/String;

    iput-object p2, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->payload:Ljava/lang/Object;

    iget-object p5, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->j:Ljava/lang/String;

    invoke-static {p5}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->d(Ljava/lang/String;)I

    move-result p5

    if-ltz p5, :cond_2

    iput-boolean v2, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_enabled:Z

    iget-object p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    if-eqz p6, :cond_0

    iget v3, p6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->a:I

    iget v4, p6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->b:I

    iget p6, p6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c:I

    filled-new-array {v3, v4, p6}, [I

    move-result-object p6

    iput-object p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->color:[I

    goto :goto_0

    :cond_0
    iget-object p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->m:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    if-eqz p6, :cond_1

    iget v3, p6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->a:I

    iget v4, p6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->b:I

    iget p6, p6, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->c:I

    filled-new-array {v3, v4, p6}, [I

    move-result-object p6

    iput-object p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->color:[I

    :cond_1
    :goto_0
    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->c:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->transparency:I

    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->f:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->roughness:I

    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->d:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->reflection:I

    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->e:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->contrast:I

    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->g:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->glitter_opacity:I

    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->h:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->texture_granularity:I

    iget p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->i:I

    iput p6, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->shimmer_granularity:I

    iput p5, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->finish_type:I

    :cond_2
    iget-object p5, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p6, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->b:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    if-ne p5, p6, :cond_3

    move p5, v2

    goto :goto_1

    :cond_3
    const/4 p5, 0x0

    :goto_1
    iget-object p6, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    invoke-virtual {p6}, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->b()Z

    move-result p6

    iput-boolean p5, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->is_nail_art:Z

    if-eqz p5, :cond_4

    new-instance p5, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    invoke-direct {p5}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;-><init>()V

    iget-object v3, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->l:Ljava/lang/String;

    invoke-static {v3, p5}, Lcom/perfectcorp/perfectlib/HandCam;->loadNailArtImage(Ljava/lang/String;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;)V

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_art_images:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    aput-object p5, v3, v0

    iget-object p5, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_art_image_changed:[Z

    aput-boolean v2, p5, v0

    :cond_4
    if-eqz p6, :cond_7

    new-instance p5, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;

    invoke-direct {p5}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;-><init>()V

    iget-object v3, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->e:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    iget-object v5, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->l:Ljava/lang/String;

    if-ne v3, v4, :cond_5

    invoke-static {v5, p5}, Lcom/perfectcorp/perfectlib/HandCam;->loadNailTipShape(Ljava/lang/String;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;)V

    goto :goto_2

    :cond_5
    iget-object v3, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->m:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    invoke-static {v5, v3, p5}, Lcom/perfectcorp/perfectlib/HandCam;->loadNailTipShape(Ljava/lang/String;ILcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;)V

    :goto_2
    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_shapes:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;

    aput-object p5, v3, v0

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_tip_shape_changed:[Z

    aput-boolean v2, v3, v0

    new-instance v3, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    invoke-direct {v3}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;-><init>()V

    iget-object v4, p5, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;->buffer:Ljava/nio/ByteBuffer;

    iput-object v4, v3, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;->buffer:Ljava/nio/ByteBuffer;

    iget v4, p5, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;->width:I

    iput v4, v3, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;->width:I

    iget p5, p5, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;->height:I

    iput p5, v3, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;->height:I

    iget-object p5, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_art_images:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    aput-object v3, p5, v0

    iget-object p5, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_art_image_changed:[Z

    aput-boolean v2, p5, v0

    iget-object p5, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_parameter:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipParameter;

    aget-object p5, p5, v0

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->k:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    sget-object v3, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->d:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipMode;->NAIL_TIP_DEFAULT:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipMode;

    :goto_3
    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipMode;->ordinal()I

    move-result v2

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipMode;->NAIL_TIP_CUSTOMIZED:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipMode;

    goto :goto_3

    :goto_4
    iput v2, p5, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipParameter;->m_nail_tip_mode:I

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_parameter:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipParameter;

    aget-object p1, p1, v0

    iget p5, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->n:F

    iput p5, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipParameter;->m_aspect_ratio:F

    :cond_7
    if-eqz p6, :cond_8

    sget-object p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;->NailTipVTOMode:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    goto :goto_5

    :cond_8
    sget-object p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;->NailPolishVTOMode:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    :goto_5
    iput-object p1, v1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailPbrFinish;->vtoMode:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARMetadata$CurrentVTOMode;

    iget-object p1, p2, Lcom/perfectcorp/perfectlib/ph/camera/a;->j:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string p1, "apply the unsupported non-PBR nail effect. skuGuid="

    const-string p2, ", skuItemGuid="

    invoke-static {p1, p3, p2, p4}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public final u(Ljava/util/List;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V
    .locals 17

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/VtoSetting;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->g:Lcom/perfectcorp/perfectlib/VtoSetting$Parameter;

    instance-of v3, v2, Lcom/perfectcorp/perfectlib/NailParameter;

    if-eqz v3, :cond_16

    check-cast v2, Lcom/perfectcorp/perfectlib/NailParameter;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/NailParameter;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iget-object v6, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/VtoSetting;->f:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->x(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v4

    const/4 v8, 0x3

    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    iget-object v13, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    if-eqz v13, :cond_6

    const-string v13, "[fillNailFinishSetting][SKU] wearing style case"

    invoke-static {v8, v11, v13}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    invoke-static {v13, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v13

    invoke-virtual {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v13}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v13

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;

    iget-object v14, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->guid:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    iget-object v4, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->earringsOrNail:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$a;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;

    :goto_1
    if-eqz v13, :cond_7

    iget-object v4, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b;->pattern:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;

    iget-object v14, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->nailPosition:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/NailPosition;->values()[Lcom/perfectcorp/perfectlib/NailPosition;

    move-result-object v15

    array-length v5, v15

    :goto_3
    if-ge v12, v5, :cond_5

    aget-object v8, v15, v12

    move-object/from16 v16, v0

    iget-object v0, v8, Lcom/perfectcorp/perfectlib/NailPosition;->lookString:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v2, v8, :cond_3

    iget-object v0, v13, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$b$a;->patternGUID:Ljava/lang/String;

    const-string v4, "[fillNailFinishSetting][SKU] found wearingStyleGuid="

    const-string v5, ", patternGuid="

    invoke-static {v4, v9, v5, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v11, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_3
    move-object/from16 v0, v16

    const/4 v8, 0x3

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    const/4 v8, 0x3

    goto :goto_3

    :cond_5
    const-string v0, "Unknown type="

    invoke-static {v0, v14}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    return-void

    :cond_6
    move-object/from16 v16, v0

    goto :goto_4

    :cond_7
    const-string v0, ", skuGuid="

    const-string v1, ", wearingStyleGuid="

    const-string v2, "Invalid wearingStyleGuid. effect=Nail, productGuid="

    invoke-static {v2, v6, v0, v7, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9, v0}, Lbm;->e(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_a

    const-string v4, "[fillNailFinishSetting][SKU] no pattern with wearing style"

    const/4 v5, 0x3

    invoke-static {v5, v11, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "1"

    invoke-static {v4, v7, v5}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[fillNailFinishSetting][SKU] no pattern in palette="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v11, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "no color in palette="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    const-string v4, "[fillNailFinishSetting][SKU] found a pattern="

    const-string v5, " in palette="

    invoke-static {v4, v0, v5, v7}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v5, v11, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    const/4 v8, 0x0

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pattern GUID is null under palette="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->h(Ljava/lang/String;Z)V

    :cond_a
    :goto_7
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->t:Ljava/lang/String;

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->c:Lcom/perfectcorp/perfectlib/ph/camera/a$b;

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/camera/a$b;->f:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v5, 0x0

    goto :goto_8

    :cond_b
    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;->b:Ljava/lang/String;

    :goto_8
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ph/camera/a$a;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->o:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->r:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->p:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->q:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->A:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->g:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->B:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->h:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->C:I

    iput v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->i:I

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->s:Ljava/lang/String;

    iput-object v4, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->k:Ljava/lang/String;

    iput-object v5, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->l:Ljava/lang/String;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;->u:Ljava/lang/String;

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->m:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->b(Lcom/perfectcorp/perfectlib/NailPosition;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;)F

    move-result v1

    iput v1, v0, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->n:F

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-direct {v5, v0}, Lcom/perfectcorp/perfectlib/ph/camera/a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V

    move-object v8, v7

    move-object/from16 v4, p2

    move-object v3, v10

    :goto_9
    invoke-virtual/range {v3 .. v9}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->t(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/camera/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    move-object/from16 v0, v16

    goto/16 :goto_0

    :cond_c
    const-string v1, "No pattern masks in patternGuid="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v1, "No pattern can be found for patternGuid="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_e
    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->f:Ljava/lang/String;

    const-class v4, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    invoke-virtual {v0, v1, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/ph/camera/a$a;-><init>()V

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->a:Lcom/perfectcorp/perfectlib/NailPosition;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-direct {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;)V

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->transparency:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v5

    goto :goto_b

    :cond_f
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->transparency:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v2

    :goto_b
    iput v2, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->c:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->roughness:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v5

    goto :goto_c

    :cond_10
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->roughness:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v2

    :goto_c
    iput v2, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->f:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->reflection:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v5

    goto :goto_d

    :cond_11
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->reflection:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v2

    :goto_d
    iput v2, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->d:I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->contrast:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    move v12, v5

    goto :goto_e

    :cond_12
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->contrast:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->b(ILjava/lang/String;)I

    move-result v12

    :goto_e
    iput v12, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->e:I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$f;->finishType:Ljava/lang/String;

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/ph/camera/a$a;->j:Ljava/lang/String;

    new-instance v5, Lcom/perfectcorp/perfectlib/ph/camera/a;

    invoke-direct {v5, v1}, Lcom/perfectcorp/perfectlib/ph/camera/a;-><init>(Lcom/perfectcorp/perfectlib/ph/camera/a$a;)V

    const-string v9, ""

    move-object v8, v7

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    goto/16 :goto_9

    :cond_13
    const-string v0, "No extra info in palette "

    invoke-static {v0, v7}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_14
    const-string v0, "No palette can be found for "

    invoke-static {v0, v7}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_15
    const-string v0, "No SKU GUID"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_16
    move-object/from16 v16, v0

    goto/16 :goto_a

    :cond_17
    return-void
.end method

.method public final synthetic v(ILjava/util/List;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->e(Ljava/util/List;Z)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    new-instance p2, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {p2}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->u(Ljava/util/List;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    new-instance p1, Lcom/perfectcorp/perfectlib/ph/clflurry/b;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;->Nails:Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->c:Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/perfectlib/ph/clflurry/b;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/YMKFeatures$EventFeature;Lcom/perfectcorp/perfectlib/ph/clflurry/b$a;)V

    invoke-static {p2, p1}, Lcom/perfectcorp/perfectlib/ph/clflurry/c;->o(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/perfectcorp/perfectlib/ph/clflurry/b;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {p2, v0}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->f(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    move-result-object p2

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/HandCam;->validateHandARParameters(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->b()V

    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->p(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_art_images:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_0

    aget-object v6, v1, v4

    iput-object v5, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailArtImage;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->nail_tip_shapes:[Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    iput-object v5, v6, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$NailTipShape;->buffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_art_image_changed:[Z

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;->is_nail_tip_shape_changed:[Z

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([ZZ)V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->j:Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public final y(I)V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedApplyTaskSN("

    const-string v2, ")"

    const-string v3, "currentApplyTaskSN("

    invoke-static {p0, p1, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic z(I)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->y(I)V

    new-instance p1, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->w(Lcom/cyberlink/clgpuimage/hand/CLHandARFilter$HandARParameters;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method
