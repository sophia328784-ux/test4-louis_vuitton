.class public abstract Lcom/perfectcorp/perfectlib/ph/template/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ph/template/e$e;,
        Lcom/perfectcorp/perfectlib/ph/template/e$a;,
        Lcom/perfectcorp/perfectlib/ph/template/e$d;,
        Lcom/perfectcorp/perfectlib/ph/template/e$g;,
        Lcom/perfectcorp/perfectlib/ph/template/e$c;,
        Lcom/perfectcorp/perfectlib/ph/template/e$f;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ExecutorService;

.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "LOOK_DATA_QUERY_EXECUTOR"

    invoke-static {v1}, Lcom/perfectcorp/common/concurrent/NamedThreadFactory;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/ph/template/e;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
    .locals 3

    const-string v0, "[queryFunStickerTemplateByGuid] funStickerGuid="

    const/4 v1, 0x3

    const-string v2, "PanelDataCenter"

    invoke-static {v1, v0, p0, v2}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networkmanager/DownloadFolderHelper;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->r(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_1

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    return-object p0

    :cond_1
    throw p0

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid template folder. funStickerGuid="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    return-object p0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;)Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;
    .locals 7

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;-><init>()V

    const-string v1, "frame_length"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->b:F

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->b:F

    const-string v1, "bridge_length"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->c:F

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->c:F

    const-string v1, "frame_total_width"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->a:F

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v1

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->a:F

    const-string v1, "left_anchor_position"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->d:[F

    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->o(Ljava/lang/String;I[F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->d:[F

    const-string v1, "right_anchor_position"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->e:[F

    invoke-static {v1, v3, v2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->o(Ljava/lang/String;I[F)[F

    move-result-object v1

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;->e:[F

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;-><init>()V

    const-string v2, "len_color_1"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->a:[F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->q(Ljava/lang/String;[F)[F

    move-result-object v2

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->a:[F

    const-string v2, "len_density_1"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->b:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->b:F

    const-string v2, "len_color_2"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_7
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->c:[F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->q(Ljava/lang/String;[F)[F

    move-result-object v2

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->c:[F

    const-string v2, "len_density_2"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->d:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->d:F

    const-string v2, "len_color_3"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->e:[F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->q(Ljava/lang/String;[F)[F

    move-result-object v2

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->e:[F

    const-string v2, "len_density_3"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->f:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->f:F

    const-string v2, "len_gradient_1"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_b
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    iget-boolean v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->g:Z

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->g:Z

    const-string v2, "len_gradient_1_position"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_c
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->h:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->h:F

    const-string v2, "len_gradient_1_range"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_d
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->i:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->i:F

    const-string v2, "len_gradient_2"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_e
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    iget-boolean v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->j:Z

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->j:Z

    const-string v2, "len_gradient_2_position"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_f
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_f
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->k:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->k:F

    const-string v2, "len_gradient_2_range"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_10
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_10
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->l:F

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->l:F

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->b:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v2, :cond_12

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->d:F

    cmpl-float v2, v2, v3

    if-gez v2, :cond_12

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->f:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_11

    goto :goto_11

    :cond_11
    move v2, v4

    goto :goto_12

    :cond_12
    :goto_11
    move v2, v5

    :goto_12
    iput-boolean v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->m:Z

    const-string v2, "frame_opacity"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_13
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_13
    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v2, v6}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a(Ljava/lang/String;F)F

    move-result v2

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->n:F

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_15

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_15

    const-string v2, "enable_frame_opacity"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    :cond_14
    invoke-virtual {p1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_14
    invoke-static {p0, v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->m(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_15

    move v4, v5

    :cond_15
    iput-boolean v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;->o:Z

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    invoke-direct {p0, v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearSetting;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$Object3DEyewearGlassInfo;)V

    return-object p0
.end method

.method public static c(Ljava/io/File;)Ljava/io/File;
    .locals 8

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/common/utility/MoreCollections;->a:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v2, v0

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "sticker_template.json"

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->c(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static d(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const/16 v16, 0x0

    goto/16 :goto_18

    :cond_1
    sget-object v1, Lcom/perfectcorp/perfectlib/ph/template/l;->b:[I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->a:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const-string v3, "shimmer_granularity"

    const-string v4, "shimmer_density"

    const-string v5, "shimmer_intensity"

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;-><init>()V

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->P:I

    const/16 v3, 0x64

    if-ltz v2, :cond_2

    if-gt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;->a:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->Q:I

    if-ltz v0, :cond_3

    if-gt v0, v3, :cond_3

    move v8, v0

    :cond_3
    iput v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;->b:I

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload$Builder;)V

    return-object v0

    :pswitch_2
    sget-object v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->d:Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->O:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v3, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/b;->o(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_0

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$Builder;-><init>()V

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->guid:Ljava/lang/String;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->rootFolder:Ljava/lang/String;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->data:Ljava/lang/String;

    iget v6, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->version:I

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->d()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;->e()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSetting;)V

    return-object v0

    :pswitch_3
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->d:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuItemDao;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "PanelDataCenter"

    const-string v5, "\'"

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "[createReal3DEyewearPayload] use the mask info from SKU \'"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e;->a()Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extra data is null for SKU \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->guid:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->o(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    move-result-object v0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b;->pattern:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/e$b$b;->mask:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    invoke-static {v0, v2}, Lcom/perfectcorp/perfectlib/ph/template/e;->b(Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;)Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[createReal3DEyewearPayload] use the mask info from pattern \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->o(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    invoke-static {v0, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->b(Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;)Lcom/perfectcorp/perfectlib/makeupcam/camera/Real3DEyewearPayload;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/template/c;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lu81;

    invoke-direct {v0, v1, v8}, Lu81;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v3, "front_src"

    invoke-virtual {v0, v3}, Lu81;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v4, "front_texture"

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "left_src"

    invoke-virtual {v0, v3}, Lu81;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v4, "left_texture"

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "right_src"

    invoke-virtual {v0, v3}, Lu81;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    const-string v4, "right_texture"

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "env_region_src"

    invoke-virtual {v0, v3}, Lu81;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const-string v3, "env_region_texture"

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "env_map_src"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "env_map_texture"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "env_frame_src"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "env_frame_texture"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;-><init>()V

    const-string v3, "front_left_anchor"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->a:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->a:[F

    const-string v3, "front_right_anchor"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->b:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->b:[F

    const-string v3, "left_ear_anchor"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->c:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->c:[F

    const-string v3, "left_front_anchor"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->d:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->d:[F

    const-string v3, "right_ear_anchor"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->e:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->e:[F

    const-string v3, "right_front_anchor"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->f:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->f:[F

    const-string v3, "eyewear_scale"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->g:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->g:F

    const-string v3, "left_side_degree"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->h:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->h:F

    const-string v3, "right_side_degree"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->i:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->i:F

    const-string v3, "front_scale"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->j:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->j:F

    const-string v3, "left_scale"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->k:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->k:F

    const-string v3, "right_scale"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->l:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->l:F

    const-string v3, "depth"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->m:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->m:F

    const-string v3, "frame_length"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->n:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->n:F

    const-string v3, "bridge_length"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->o:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->o:F

    const-string v3, "temple_length"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->p:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->p:F

    const-string v3, "frame_total_width"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->q:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->q:F

    const-string v3, "env_mode"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->r:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->r:F

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->s:F

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->t:F

    const/4 v5, 0x2

    new-array v6, v5, [F

    aput v3, v6, v8

    aput v4, v6, v7

    const-string v3, "env_tile"

    invoke-static {v3, v1, v6}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    aget v4, v3, v8

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->s:F

    aget v3, v3, v7

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->t:F

    const-string v3, "env_intensity"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->u:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->u:F

    const-string v3, "env_frame_mode"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->v:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->v:F

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->w:F

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->x:F

    new-array v5, v5, [F

    aput v3, v5, v8

    aput v4, v5, v7

    const-string v3, "env_frame_tile"

    invoke-static {v3, v1, v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->p(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    aget v4, v3, v8

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->w:F

    aget v3, v3, v7

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->x:F

    const-string v3, "env_frame_intensity"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->y:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->y:F

    const-string v3, "len_color_1"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->z:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->r(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->z:[F

    const-string v3, "len_density_1"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->A:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->A:F

    const-string v3, "len_color_2"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->B:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->r(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->B:[F

    const-string v3, "len_density_2"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->C:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->C:F

    const-string v3, "len_color_3"

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->D:[F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->r(Ljava/lang/String;Lorg/json/JSONObject;[F)[F

    move-result-object v3

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->D:[F

    const-string v3, "len_density_3"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->E:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->E:F

    const-string v3, "len_gradient_1"

    iget-boolean v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->F:Z

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->l(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->F:Z

    const-string v3, "len_gradient_1_position"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->G:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->G:F

    const-string v3, "len_gradient_1_range"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->H:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->H:F

    const-string v3, "len_gradient_2"

    iget-boolean v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->I:Z

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->l(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->I:Z

    const-string v3, "len_gradient_2_position"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->J:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->J:F

    const-string v3, "len_gradient_2_range"

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->K:F

    invoke-static {v3, v1, v4}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->K:F

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->A:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-gez v3, :cond_9

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->C:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_9

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->E:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_8

    goto :goto_3

    :cond_8
    move v3, v8

    goto :goto_4

    :cond_9
    :goto_3
    move v3, v7

    :goto_4
    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->L:Z

    const-string v3, "frame_opacity"

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v3, v1, v5}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->b(Ljava/lang/String;Lorg/json/JSONObject;F)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->M:F

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_a

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_a

    const-string v3, "enable_frame_opacity"

    invoke-static {v3, v1, v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->l(Ljava/lang/String;Lorg/json/JSONObject;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    move v7, v8

    :goto_5
    iput-boolean v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;->N:Z

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/CubeEyewearPayload;-><init>(Ljava/util/Map;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveCubeEyewearFilter$LiveCubeEyewearInfo;)V

    return-object v1

    :pswitch_5
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->M:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->N:I

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;-><init>(II)V

    return-object v1

    :pswitch_6
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Builder;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->E:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;-><init>(Ljava/util/List;)V

    return-object v1

    :pswitch_7
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload$Builder;-><init>()V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->D:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyeShadowLinerPayload;-><init>(Ljava/util/List;)V

    return-object v1

    :pswitch_8
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->h:Ljava/lang/String;

    iget v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->i:I

    iget v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->j:I

    invoke-direct {v1, v7, v9, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;-><init>(Ljava/lang/String;II)V

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->f:Ljava/lang/String;

    sget v7, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->a:F

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->b:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/style/a;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v7, v9, v10, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;-><init>(Ljava/lang/String;II)V

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->y(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    move-result-object v1

    if-eqz v7, :cond_d

    if-eqz v1, :cond_d

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->a:Ljava/lang/String;

    iget v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->b:I

    iget v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->c:I

    invoke-direct {v9, v1, v10, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;-><init>(Ljava/lang/String;II)V

    move-object v1, v9

    :cond_d
    :goto_7
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/c;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->T:Ljava/util/List;

    const-string v10, "shape_lipstick_original"

    if-eqz v9, :cond_15

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->S:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->S:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v3

    if-nez v3, :cond_e

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v3

    :cond_e
    if-eqz v3, :cond_f

    iget-object v2, v3, Lcom/perfectcorp/perfectlib/ph/template/p;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_8

    :cond_f
    const/16 v17, 0x0

    :goto_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->T:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;

    move-result-object v10

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->o:I

    if-ne v7, v6, :cond_10

    move v11, v8

    goto :goto_a

    :cond_10
    move v11, v7

    :goto_a
    iget v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->q:I

    if-ne v7, v6, :cond_11

    move v13, v8

    goto :goto_b

    :cond_11
    move v13, v7

    :goto_b
    iget v7, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->p:I

    if-ne v7, v6, :cond_12

    move v12, v8

    goto :goto_c

    :cond_12
    move v12, v7

    :goto_c
    new-instance v14, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    iget v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->n:I

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->l()I

    move-result v7

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v9, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    iget v4, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->m:I

    invoke-direct {v14, v5, v7, v9, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;IIILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    new-instance v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    if-eqz v1, :cond_14

    :goto_d
    move-object v10, v1

    goto :goto_e

    :cond_14
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    goto :goto_d

    :goto_e
    const/16 v14, 0x64

    const/16 v15, 0x64

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v17}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;ILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIILjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;)V

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->k:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->l:I

    iput v1, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->e:I

    iput v0, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->f:I

    return-object v9

    :cond_15
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const-string v11, "wrinkless"

    const-string v12, "fullness"

    const-string v13, "shimmer_color"

    const-string v14, "gloss"

    const-string v15, "transparency"

    if-nez v9, :cond_1c

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/16 v16, 0x0

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v2

    if-nez v2, :cond_16

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/shape/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/p;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_17

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/template/p;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;

    move-result-object v2

    move-object/from16 v25, v2

    goto :goto_f

    :cond_17
    move-object/from16 v25, v16

    :goto_f
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    const-string v9, "2"

    invoke-static {v2, v7, v9}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;

    iget-object v10, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->a:Ljava/lang/String;

    invoke-static {v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;

    move-result-object v17

    iget-object v10, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->i:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b;->f:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v9, v15, v8}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v20

    iget-object v9, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v9, v14, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v19

    new-instance v9, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    :try_start_0
    iget-object v8, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v8, v13}, Lcom/perfectcorp/common/gson/GsonHelper;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_11
    move-object/from16 v23, v1

    goto :goto_12

    :catchall_0
    move v8, v6

    goto :goto_11

    :goto_12
    iget-object v1, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v1, v5, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v24, v2

    iget-object v2, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v2, v4, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v26, v15

    iget-object v15, v10, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v15, v3, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v15

    invoke-direct {v9, v8, v1, v2, v15}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    new-instance v16, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickLayer;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;IIILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;)V

    move-object/from16 v1, v16

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v10

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v15, v26

    const/4 v8, 0x0

    goto :goto_10

    :cond_18
    move-object/from16 v23, v1

    move-object/from16 v2, v16

    new-instance v17, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    if-eqz v23, :cond_19

    move-object/from16 v18, v23

    goto :goto_13

    :cond_19
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    move-object/from16 v18, v1

    :goto_13
    if-eqz v2, :cond_1a

    iget-object v1, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const/4 v3, 0x0

    invoke-static {v1, v12, v3}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v22

    move/from16 v1, v22

    goto :goto_14

    :cond_1a
    const/4 v3, 0x0

    move v1, v3

    :goto_14
    if-eqz v2, :cond_1b

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v2, v11, v3}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v8

    move/from16 v23, v8

    goto :goto_15

    :cond_1b
    const/16 v23, 0x0

    :goto_15
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v1

    move-object/from16 v24, v7

    invoke-direct/range {v17 .. v25}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;ILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIILjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;)V

    move-object/from16 v1, v17

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->k:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->l:I

    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->e:I

    iput v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->f:I

    return-object v1

    :cond_1c
    move-object/from16 v23, v1

    move-object/from16 v26, v15

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    invoke-static {v1, v2, v7}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-result-object v1

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v2, v14, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v29

    new-instance v2, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    :try_start_1
    iget-object v7, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v7, v13}, Lcom/perfectcorp/common/gson/GsonHelper;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_16

    :catchall_1
    move v7, v6

    :goto_16
    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v8, v5, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v5

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v8, v4, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v4

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v8, v3, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v3

    invoke-direct {v2, v7, v5, v4, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-object/from16 v4, v26

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v31

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v3, v12, v5}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v32

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v1, v11, v5}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v33

    new-instance v27, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;

    if-eqz v23, :cond_1d

    move-object/from16 v28, v23

    goto :goto_17

    :cond_1d
    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;

    move-object/from16 v28, v1

    :goto_17
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v2

    invoke-direct/range {v27 .. v35}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;ILcom/perfectcorp/perfectlib/jniproxy/UIShimmer;IIILjava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;)V

    move-object/from16 v1, v27

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->k:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->l:I

    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->e:I

    iput v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickPayload;->f:I

    return-object v1

    :pswitch_9
    const/16 v16, 0x0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->R:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->LEFT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-eq v1, v2, :cond_1e

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-eq v1, v3, :cond_1e

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->BOTH:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-eq v1, v3, :cond_1e

    :goto_18
    return-object v16

    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v0, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload$Pattern;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eq v1, v2, :cond_1f

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->BOTH:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-ne v1, v0, :cond_20

    :cond_1f
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-eq v1, v0, :cond_21

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;->BOTH:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect$Position;

    if-ne v1, v0, :cond_22

    :cond_21
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringsPayload;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0

    :pswitch_a
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/c;->j(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;-><init>()V

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->F:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_Lipliner_Type;

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->G:I

    if-eq v3, v6, :cond_23

    goto :goto_19

    :cond_23
    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v4, "thickness"

    invoke-static {v3, v4, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v3

    :goto_19
    iput v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->b:I

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->H:I

    if-eq v3, v6, :cond_24

    goto :goto_1a

    :cond_24
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$b;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string v3, "smoothness"

    invoke-static {v1, v3, v6}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v3

    :goto_1a
    iput v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->c:I

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->I:I

    iput v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->d:I

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->J:I

    iput v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->e:I

    iget v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->K:I

    iput v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->f:I

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->L:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v7

    invoke-static {v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->f(Z)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;->g:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LipLinerPayload$Builder;)V

    return-object v0

    :pswitch_b
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->w:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->x:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->y:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v3}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_1e

    :cond_25
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_29

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_26

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    goto :goto_1c

    :cond_26
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/lang/String;

    :goto_1c
    iput-object v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->a:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->b:I

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_27

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    goto :goto_1d

    :cond_27
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Ljava/lang/Integer;

    :goto_1d
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->c:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_28
    :goto_1e
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_29
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->d:Ljava/lang/String;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;->e:Ljava/lang/String;

    goto :goto_1f

    :cond_2a
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;-><init>()V

    iput-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->a:Ljava/util/List;

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->z:F

    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->b:F

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->A:F

    iput v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->c:F

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->C:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->C:Ljava/lang/String;

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$a;->a:Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$a;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/b$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_20

    :cond_2b
    const/4 v7, 0x0

    :goto_20
    iput-boolean v7, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->d:Z

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;)V

    return-object v0

    :pswitch_c
    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;-><init>()V

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->t:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->u:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iput-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->v:I

    iput v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->c:I

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Builder;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;

    move-result-object v0

    return-object v0

    :pswitch_d
    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/g;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;-><init>()V

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->p:I

    iput v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->d:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->o:I

    iput v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->c:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->m:I

    iput v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->a:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->n:I

    iput v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->b:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->q:I

    iput v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->e:I

    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->r:I

    iput v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->f:I

    iget v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$PayloadCreatorParameters;->s:I

    iput v0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->g:I

    if-eqz v1, :cond_2c

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    new-instance v1, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a()I

    move-result v6

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v7, v5, v8}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v5

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v7, v4, v8}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v4

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-static {v0, v3, v8}, Lcom/perfectcorp/common/gson/GsonHelper;->a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v6, v5, v4, v0}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    iput-object v1, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;->h:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    :cond_2c
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/EyebrowPayload$Builder;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/template/c;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/color/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/template/c;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->c(Lcom/perfectcorp/perfectlib/ph/template/c;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static f(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->A(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;->g:Ljava/util/ArrayList;

    :cond_1
    return-object v0
.end method

.method public static g(Ljava/util/List;)Ljava/util/List;
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->v(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static h(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;)V
    .locals 1

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isAccessory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Setting;->b:Ljava/lang/String;

    :goto_0
    invoke-static {p0, p2, p1}, Lcom/perfectcorp/perfectlib/ph/template/e;->j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    return-void
.end method

.method public static i(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;)V
    .locals 2

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->e:Ljava/lang/String;

    :goto_0
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, p1, v1, v0}, Lcom/perfectcorp/perfectlib/ph/template/e;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    :cond_1
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->d:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/perfectlib/ph/template/e;->m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->e:Ljava/lang/String;

    :goto_1
    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FaceContourPayload$Setting;->h:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-static {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/ph/template/e;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V

    :cond_3
    return-void
.end method

.method public static j(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 4

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDbHelper;->a(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->q:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    :goto_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;->NONE:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/EnumMap;

    const-class v1, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-direct {p0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :cond_2
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V
    .locals 2

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/e;->n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lr81;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lr81;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->groupBy(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lr81;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lr81;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/j;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/ph/template/j;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    return-void
.end method

.method public static l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)V
    .locals 3

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/SkuDbHelper;->a(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->q:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    :goto_0
    sget-object v0, Lcom/perfectcorp/perfectlib/ph/widgetpool/panel/livemakeup/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_2

    new-instance p0, Ljava/util/EnumMap;

    const-class v0, Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-direct {p0, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    :cond_2
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static m(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)V
    .locals 3

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->w(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/ph/template/l;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_BAND:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->NECKLACE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne p2, v0, :cond_3

    :cond_1
    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;->DEFAULT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/makeupcam/template/TemplateConsts;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, p2, v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/pattern/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ph/template/TemplateUtils;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    :goto_2
    invoke-static {p2}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;)V
    .locals 9

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->i:Z

    if-nez v0, :cond_1

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v7, ""

    const/4 v8, 0x0

    const-string v2, ""

    const-string v4, ""

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/lang/String;Ljava/util/List;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Intensities;Ljava/lang/String;Lcom/perfectcorp/perfectlib/makeupcam/template/EffectInfo$Extras;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/a;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/g;

    invoke-direct {v3, p0, v1}, Lcom/perfectcorp/perfectlib/ph/template/g;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;)V

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/template/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/ph/template/f;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->filter(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Predicate;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;->a(Ljava/util/ArrayList;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    move-result-object v0

    sget-object v2, Lcom/perfectcorp/perfectlib/ph/template/e$b$a;->a:Lcom/perfectcorp/perfectlib/ph/template/e$b$a;

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;->b(Lcom/perfectcorp/thirdparty/com/google/common/base/Function;)Lcom/perfectcorp/thirdparty/com/google/common/collect/Ordering;

    move-result-object v0

    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/at;->b(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-object v1, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->d(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v0, v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->i:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/perfectcorp/common/utility/MoreCollections;->a(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->i:Z

    :cond_1
    return-void
.end method

.method public static o(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;
    .locals 4

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/mask/a;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-class v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-gtz v0, :cond_0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;

    sget-object v2, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/c;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/c;->d:Ljava/lang/String;

    invoke-virtual {v2, p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->i(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V

    return-object v0
.end method
