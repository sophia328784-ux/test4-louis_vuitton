.class public Lcom/canhub/cropper/CropImageActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;
.implements Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageActivity$Companion;,
        Lcom/canhub/cropper/CropImageActivity$Source;,
        Lcom/canhub/cropper/CropImageActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "<init>",
        "()V",
        "Source",
        "Companion",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public i:Landroid/net/Uri;

.field public j:Lcom/canhub/cropper/CropImageOptions;

.field public k:Lcom/canhub/cropper/CropImageView;

.field public l:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

.field public m:Landroid/net/Uri;

.field public final n:Landroidx/activity/result/ActivityResultLauncher;

.field public final o:Landroidx/activity/result/ActivityResultLauncher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$GetContent;-><init>()V

    new-instance v1, Lnr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lnr;-><init>(Lcom/canhub/cropper/CropImageActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->n:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$TakePicture;-><init>()V

    new-instance v1, Lnr;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lnr;-><init>(Lcom/canhub/cropper/CropImageActivity;I)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->o:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static y(Landroid/view/Menu;II)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroidx/core/graphics/BlendModeCompat;->SRC_ATOP:Landroidx/core/graphics/BlendModeCompat;

    invoke-static {p2, v0}, Landroidx/core/graphics/BlendModeColorFilterCompat;->a(ILandroidx/core/graphics/BlendModeCompat;)Landroid/graphics/BlendModeColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final g(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView$CropResult;)V
    .locals 1

    iget-object p1, p2, Lcom/canhub/cropper/CropImageView$CropResult;->c:Landroid/net/Uri;

    iget-object v0, p2, Lcom/canhub/cropper/CropImageView$CropResult;->d:Ljava/lang/Exception;

    iget p2, p2, Lcom/canhub/cropper/CropImageView$CropResult;->i:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/canhub/cropper/CropImageActivity;->w(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method public final m(Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    if-nez p3, :cond_6

    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    const-string p3, "cropImageOptions"

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/canhub/cropper/CropImageOptions;->Y:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/canhub/cropper/CropImageView;->setCropRect(Landroid/graphics/Rect;)V

    :cond_0
    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz p2, :cond_4

    iget p2, p2, Lcom/canhub/cropper/CropImageOptions;->Z:I

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/canhub/cropper/CropImageView;->setRotatedDegrees(I)V

    :cond_1
    iget-object p2, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz p2, :cond_3

    iget-boolean p1, p2, Lcom/canhub/cropper/CropImageOptions;->h1:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->v()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/canhub/cropper/CropImageActivity;->w(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 85

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d003e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    check-cast v1, Lcom/canhub/cropper/CropImageView;

    new-instance v3, Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    invoke-direct {v3, v1, v1}, Lcom/canhub/cropper/databinding/CropImageActivityBinding;-><init>(Lcom/canhub/cropper/CropImageView;Lcom/canhub/cropper/CropImageView;)V

    iput-object v3, v2, Lcom/canhub/cropper/CropImageActivity;->l:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->l:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    const-string v9, "binding"

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->c:Lcom/canhub/cropper/CropImageView;

    iput-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "CROP_IMAGE_EXTRA_SOURCE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v4, v3, Landroid/net/Uri;

    if-nez v4, :cond_0

    move-object v3, v7

    :cond_0
    check-cast v3, Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    iput-object v3, v2, Lcom/canhub/cropper/CropImageActivity;->i:Landroid/net/Uri;

    if-eqz v1, :cond_3

    const-string v3, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v3, v1, Lcom/canhub/cropper/CropImageOptions;

    if-nez v3, :cond_2

    move-object v1, v7

    :cond_2
    check-cast v1, Lcom/canhub/cropper/CropImageOptions;

    if-nez v1, :cond_4

    :cond_3
    new-instance v10, Lcom/canhub/cropper/CropImageOptions;

    const/16 v83, 0x3f

    const/16 v84, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, -0x1

    const/16 v82, -0x1

    invoke-direct/range {v10 .. v84}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v10

    :cond_4
    iput-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    const-string v10, "cropImageOptions"

    if-nez v0, :cond_12

    iget-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->i:Landroid/net/Uri;

    if-eqz v0, :cond_6

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_14

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto/16 :goto_6

    :cond_6
    :goto_1
    iget-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lcom/canhub/cropper/CropImageOptions;->c:Z

    iget-boolean v3, v0, Lcom/canhub/cropper/CropImageOptions;->i1:Z

    const-string v4, ".png"

    const-string v5, "tmp_image_file"

    if-eqz v3, :cond_d

    new-instance v0, Lcom/canhub/cropper/CropImageIntentChooser;

    new-instance v1, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;

    invoke-direct {v1, v2}, Lcom/canhub/cropper/CropImageActivity$showIntentChooser$ciIntentChooser$1;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    invoke-direct {v0, v2, v1}, Lcom/canhub/cropper/CropImageIntentChooser;-><init>(Landroidx/activity/ComponentActivity;Lcom/canhub/cropper/CropImageIntentChooser$ResultCallback;)V

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_c

    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->c:Z

    iget-object v6, v1, Lcom/canhub/cropper/CropImageOptions;->j1:Ljava/lang/String;

    if-eqz v6, :cond_8

    invoke-static {v6}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    move-object v6, v7

    :goto_2
    if-eqz v6, :cond_8

    iput-object v6, v0, Lcom/canhub/cropper/CropImageIntentChooser;->c:Ljava/lang/String;

    :cond_8
    iget-object v6, v1, Lcom/canhub/cropper/CropImageOptions;->k1:Ljava/util/List;

    if-eqz v6, :cond_a

    move-object v11, v6

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_3

    :cond_9
    move-object v6, v7

    :goto_3
    if-eqz v6, :cond_a

    iput-object v6, v0, Lcom/canhub/cropper/CropImageIntentChooser;->d:Ljava/util/List;

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v5, v4, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    invoke-static {v2, v4}, Lcom/canhub/cropper/utils/GetUriForFileKt;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    :cond_b
    move-object v4, v7

    :goto_4
    iget-boolean v1, v1, Lcom/canhub/cropper/CropImageOptions;->b:Z

    invoke-virtual {v0, v3, v1, v4}, Lcom/canhub/cropper/CropImageIntentChooser;->b(ZZLandroid/net/Uri;)V

    goto/16 :goto_6

    :cond_c
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_d
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->b:Z

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    new-instance v0, Lcom/canhub/cropper/CropImageActivity$onCreate$1;

    const-string v5, "openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/canhub/cropper/CropImageActivity;

    const-string v4, "openSource"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Landroidx/appcompat/app/AlertDialog$Builder;->a:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-boolean v8, v3, Landroidx/appcompat/app/AlertController$AlertParams;->l:Z

    new-instance v4, Lor;

    invoke-direct {v4, v2}, Lor;-><init>(Lcom/canhub/cropper/CropImageActivity;)V

    iput-object v4, v3, Landroidx/appcompat/app/AlertController$AlertParams;->o:Landroid/content/DialogInterface$OnKeyListener;

    const v3, 0x7f14100c

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->f(I)V

    const v3, 0x7f14100b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f14100d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    new-instance v4, Lcom/canhub/cropper/a;

    invoke-direct {v4, v0}, Lcom/canhub/cropper/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->g()Landroidx/appcompat/app/AlertDialog;

    goto :goto_6

    :cond_e
    if-eqz v0, :cond_f

    iget-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->n:Landroidx/activity/result/ActivityResultLauncher;

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    if-eqz v1, :cond_10

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v5, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    invoke-static {v2, v0}, Lcom/canhub/cropper/utils/GetUriForFileKt;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->m:Landroid/net/Uri;

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->o:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_11
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_12
    const-string v1, "bundle_key_tmp_uri"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_5

    :cond_13
    move-object v0, v7

    :goto_5
    iput-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->m:Landroid/net/Uri;

    :cond_14
    :goto_6
    iget-object v0, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_1f

    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->o1:I

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->l:Lcom/canhub/cropper/databinding/CropImageActivityBinding;

    if-eqz v1, :cond_1e

    iget-object v1, v1, Lcom/canhub/cropper/databinding/CropImageActivityBinding;->b:Lcom/canhub/cropper/CropImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->N:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_15

    const-string v1, ""

    :cond_15
    invoke-virtual {v2, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->p1:Ljava/lang/Integer;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_1a

    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->q1:Ljava/lang/Integer;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v8, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_17
    iget-object v1, v2, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v1, :cond_19

    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->r1:Ljava/lang/Integer;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const v3, 0x7f08014b

    :try_start_0
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_18

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v1, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :cond_18
    :goto_7
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    :cond_19
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1a
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1b
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1c
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1d
    :goto_9
    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lck;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lck;-><init>(Ljava/lang/Object;I)V

    const/4 v2, 0x3

    invoke-static {v0, v7, v1, v2}, Landroidx/activity/OnBackPressedDispatcherKt;->a(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;I)V

    return-void

    :cond_1e
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_1f
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_20
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v7

    :cond_21
    const-string v0, "rootView"

    invoke-static {v0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    const-string v1, "cropImageOptions"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->h1:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v4, 0x7f0f0000

    invoke-virtual {v0, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_13

    iget-boolean v4, v0, Lcom/canhub/cropper/CropImageOptions;->h0:Z

    const v5, 0x7f0a0237

    const v6, 0x7f0a0236

    if-nez v4, :cond_1

    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    invoke-interface {p1, v5}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->b1:Z

    if-eqz v0, :cond_2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_12

    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageOptions;->t0:Z

    const v4, 0x7f0a0233

    if-nez v0, :cond_3

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    :cond_3
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lcom/canhub/cropper/CropImageOptions;->f1:Ljava/lang/CharSequence;

    const v7, 0x7f0a013f

    if-eqz v0, :cond_5

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v8, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v8, :cond_4

    iget-object v8, v8, Lcom/canhub/cropper/CropImageOptions;->f1:Ljava/lang/CharSequence;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_7

    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->g1:I

    if-eqz v0, :cond_6

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    :cond_6
    move-object v0, v2

    goto :goto_2

    :cond_7
    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    :goto_2
    iget-object v8, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v8, :cond_10

    iget v8, v8, Lcom/canhub/cropper/CropImageOptions;->O:I

    if-eqz v8, :cond_b

    invoke-static {p1, v6, v8}, Lcom/canhub/cropper/CropImageActivity;->y(Landroid/view/Menu;II)V

    iget-object v8, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v8, :cond_a

    iget v8, v8, Lcom/canhub/cropper/CropImageOptions;->O:I

    invoke-static {p1, v5, v8}, Lcom/canhub/cropper/CropImageActivity;->y(Landroid/view/Menu;II)V

    iget-object v8, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v8, :cond_9

    iget v8, v8, Lcom/canhub/cropper/CropImageOptions;->O:I

    invoke-static {p1, v4, v8}, Lcom/canhub/cropper/CropImageActivity;->y(Landroid/view/Menu;II)V

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->O:I

    invoke-static {p1, v7, v0}, Lcom/canhub/cropper/CropImageActivity;->y(Landroid/view/Menu;II)V

    goto :goto_3

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz p0, :cond_f

    iget-object p0, p0, Lcom/canhub/cropper/CropImageOptions;->P:Ljava/lang/Integer;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v0, 0x7f0a0234

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v0, 0x7f0a0235

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_2
    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-static {v2}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    if-ne v4, v3, :cond_c

    :try_start_3
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :cond_e
    :goto_5
    return v3

    :cond_f
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_14
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->w(Landroid/view/MenuItem;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a013f

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->v()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f0a0236

    const/4 v3, 0x0

    const-string v4, "cropImageOptions"

    if-ne v0, v1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->c1:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/canhub/cropper/CropImageView;->g(I)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    const v1, 0x7f0a0237

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/canhub/cropper/CropImageOptions;->c1:I

    iget-object v1, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/canhub/cropper/CropImageView;->g(I)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_4
    const v1, 0x7f0a0234

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    goto :goto_0

    :cond_5
    const v1, 0x7f0a0235

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    goto :goto_0

    :cond_6
    const v1, 0x102002c

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageActivity;->x()V

    goto :goto_0

    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_8
    :goto_0
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->x()V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :goto_1
    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->x()V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackMenuItem(Ljava/lang/Object;Landroid/view/MenuItem;)V

    throw v0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->m:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bundle_key_tmp_uri"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropImageView;->setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V

    :cond_0
    iget-object p0, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageView;->setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/canhub/cropper/CropImageActivity;->j:Lcom/canhub/cropper/CropImageOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    iget-boolean v3, v1, Lcom/canhub/cropper/CropImageOptions;->X:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2, v2, v4}, Lcom/canhub/cropper/CropImageActivity;->w(Landroid/net/Uri;Ljava/lang/Exception;I)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v0, :cond_9

    iget-object v3, v1, Lcom/canhub/cropper/CropImageOptions;->R:Landroid/graphics/Bitmap$CompressFormat;

    iget v5, v1, Lcom/canhub/cropper/CropImageOptions;->S:I

    iget v6, v1, Lcom/canhub/cropper/CropImageOptions;->T:I

    iget v7, v1, Lcom/canhub/cropper/CropImageOptions;->V:I

    iget-object v8, v1, Lcom/canhub/cropper/CropImageOptions;->W:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    iget-object v1, v1, Lcom/canhub/cropper/CropImageOptions;->Q:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/canhub/cropper/CropImageView;->F:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_9

    iget-object v13, v0, Lcom/canhub/cropper/CropImageView;->P:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    goto :goto_0

    :cond_1
    move-object v13, v2

    :goto_0
    if-eqz v13, :cond_2

    iget-object v13, v13, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->u:Lkotlinx/coroutines/JobSupport;

    invoke-interface {v13, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    iget v13, v0, Lcom/canhub/cropper/CropImageView;->H:I

    if-gt v13, v4, :cond_4

    sget-object v4, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne v8, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v11, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget v13, v0, Lcom/canhub/cropper/CropImageView;->H:I

    mul-int/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    iget v14, v0, Lcom/canhub/cropper/CropImageView;->H:I

    mul-int/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v4, v11, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    new-instance v13, Ljava/lang/ref/WeakReference;

    move/from16 v23, v5

    new-instance v5, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    move v14, v6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v15, v7

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    move-object/from16 v16, v10

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v10

    move-object/from16 v17, v11

    iget v11, v0, Lcom/canhub/cropper/CropImageView;->l:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v14

    iget-boolean v14, v9, Lcom/canhub/cropper/CropOverlayView;->B:Z

    move/from16 v19, v15

    invoke-virtual {v9}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v15

    invoke-virtual {v9}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v9

    sget-object v2, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-eq v8, v2, :cond_5

    move-object/from16 v26, v16

    move/from16 v16, v9

    move-object v9, v12

    move/from16 v12, v17

    move/from16 v17, v18

    move-object/from16 v18, v26

    goto :goto_3

    :cond_5
    move-object/from16 v18, v16

    move/from16 v16, v9

    move-object v9, v12

    move/from16 v12, v17

    const/16 v17, 0x0

    :goto_3
    if-eq v8, v2, :cond_6

    goto :goto_4

    :cond_6
    const/16 v19, 0x0

    :goto_4
    iget-boolean v2, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    if-nez v20, :cond_7

    move/from16 v21, v1

    iget-object v1, v0, Lcom/canhub/cropper/CropImageView;->Q:Landroid/net/Uri;

    move-object/from16 v24, v1

    move/from16 v20, v21

    move-object/from16 v22, v3

    move-object v1, v13

    move v13, v4

    move-object/from16 v21, v8

    move-object/from16 v8, v18

    move/from16 v18, v19

    move/from16 v19, v2

    goto :goto_5

    :cond_7
    move-object/from16 v24, v20

    move/from16 v20, v1

    move-object/from16 v22, v3

    move-object/from16 v21, v8

    move-object/from16 v8, v18

    move/from16 v18, v19

    move/from16 v19, v2

    move-object v1, v13

    move v13, v4

    :goto_5
    invoke-direct/range {v5 .. v24}, Lcom/canhub/cropper/BitmapCroppingWorkerJob;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;Landroid/net/Uri;Landroid/graphics/Bitmap;[FIIIZIIIIZZLcom/canhub/cropper/CropImageView$RequestSizeOptions;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)V

    invoke-direct {v1, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->P:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;

    sget-object v2, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v3, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/canhub/cropper/BitmapCroppingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapCroppingWorkerJob;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x2

    invoke-static {v1, v2, v4, v3, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/JobSupport;

    iput-object v2, v1, Lcom/canhub/cropper/BitmapCroppingWorkerJob;->u:Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->j()V

    return-void

    :cond_8
    const-string v0, "mOnCropImageCompleteListener is not set"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    const-string v0, "cropImageOptions"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/16 v25, 0x0

    throw v25
.end method

.method public final w(Landroid/net/Uri;Ljava/lang/Exception;I)V
    .locals 10

    if-eqz p2, :cond_0

    const/16 v0, 0xcc

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Lcom/canhub/cropper/CropImage$ActivityResult;

    iget-object v2, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/canhub/cropper/CropImageView;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v4

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v4

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/canhub/cropper/CropImageView;->getRotatedDegrees()I

    move-result v4

    :goto_4
    move v7, v4

    goto :goto_5

    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    :goto_5
    iget-object v4, p0, Lcom/canhub/cropper/CropImageActivity;->k:Lcom/canhub/cropper/CropImageView;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/canhub/cropper/CropImageView;->getWholeImageRect()Landroid/graphics/Rect;

    move-result-object v3

    :cond_5
    move-object v4, p2

    move v9, p3

    move-object v8, v3

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/canhub/cropper/CropImage$ActivityResult;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;ILandroid/graphics/Rect;I)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_6
    const-string p2, "CROP_IMAGE_EXTRA_RESULT"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
