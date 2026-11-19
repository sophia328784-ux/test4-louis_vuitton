.class public Landroidx/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;,
        Landroidx/media3/ui/PlayerControlView$SettingsAdapter;,
        Landroidx/media3/ui/PlayerControlView$ComponentListener;,
        Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;,
        Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;,
        Landroidx/media3/ui/PlayerControlView$VisibilityListener;,
        Landroidx/media3/ui/PlayerControlView$TrackInformation;,
        Landroidx/media3/ui/PlayerControlView$SubSettingViewHolder;,
        Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;,
        Landroidx/media3/ui/PlayerControlView$SettingViewHolder;
    }
.end annotation


# static fields
.field public static final K1:[F


# instance fields
.field public final A:Landroid/widget/TextView;

.field public A1:I

.field public final B:Landroid/widget/ImageView;

.field public B1:Z

.field public final C:Landroid/widget/ImageView;

.field public C1:I

.field public final D:Landroid/widget/ImageView;

.field public D1:I

.field public final E:Landroid/widget/ImageView;

.field public E1:[J

.field public final F:Landroid/widget/ImageView;

.field public F1:[Z

.field public final G:Landroid/widget/ImageView;

.field public final G1:[J

.field public final H:Landroid/view/View;

.field public final H1:[Z

.field public final I:Landroid/view/View;

.field public I1:J

.field public final J:Landroid/view/View;

.field public J1:Z

.field public final K:Landroid/widget/TextView;

.field public final L:Landroid/widget/TextView;

.field public final M:Landroidx/media3/ui/TimeBar;

.field public final N:Ljava/lang/StringBuilder;

.field public final O:Ljava/util/Formatter;

.field public final P:Landroidx/media3/common/Timeline$Period;

.field public final Q:Landroidx/media3/common/Timeline$Window;

.field public final R:Lhn0;

.field public final S:Landroid/graphics/drawable/Drawable;

.field public final T:Landroid/graphics/drawable/Drawable;

.field public final V:Landroid/graphics/drawable/Drawable;

.field public final W:Landroid/graphics/drawable/Drawable;

.field public final b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

.field public final b1:Ljava/lang/String;

.field public final c:Landroid/content/res/Resources;

.field public final c1:Ljava/lang/String;

.field public final d:Landroid/os/Handler;

.field public final d1:Landroid/graphics/drawable/Drawable;

.field public final e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

.field public final e1:Landroid/graphics/drawable/Drawable;

.field public final f:Ljava/lang/Class;

.field public final f1:F

.field public final g:Ljava/lang/reflect/Method;

.field public final g1:F

.field public final h:Ljava/lang/reflect/Method;

.field public final h0:Landroid/graphics/drawable/Drawable;

.field public final h1:Ljava/lang/String;

.field public final i:Ljava/lang/Class;

.field public final i1:Ljava/lang/String;

.field public final j:Ljava/lang/reflect/Method;

.field public final j1:Landroid/graphics/drawable/Drawable;

.field public final k:Ljava/lang/reflect/Method;

.field public final k1:Landroid/graphics/drawable/Drawable;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l1:Ljava/lang/String;

.field public final m:Landroidx/recyclerview/widget/RecyclerView;

.field public final m1:Ljava/lang/String;

.field public final n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

.field public final n1:Landroid/graphics/drawable/Drawable;

.field public final o:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

.field public final o1:Landroid/graphics/drawable/Drawable;

.field public final p:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

.field public final p1:Ljava/lang/String;

.field public final q:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

.field public final q1:Ljava/lang/String;

.field public final r:Landroidx/media3/ui/DefaultTrackNameProvider;

.field public r1:Landroidx/media3/common/Player;

.field public final s:Landroid/widget/PopupWindow;

.field public s1:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

.field public final t:I

.field public final t0:Ljava/lang/String;

.field public t1:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

.field public final u:Landroid/widget/ImageView;

.field public u1:Z

.field public final v:Landroid/widget/ImageView;

.field public v1:Z

.field public final w:Landroid/widget/ImageView;

.field public w1:Z

.field public final x:Landroid/view/View;

.field public x1:Z

.field public final y:Landroid/view/View;

.field public y1:Z

.field public final z:Landroid/widget/TextView;

.field public z1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.ui"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->a(Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/ui/PlayerControlView;->K1:[F

    return-void

    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1661
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1659
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1660
    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    const-string v1, "isScrubbingModeEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "setScrubbingModeEnabled"

    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v7, 0x1

    iput-boolean v7, v0, Landroidx/media3/ui/PlayerControlView;->x1:Z

    const/16 v4, 0x1388

    iput v4, v0, Landroidx/media3/ui/PlayerControlView;->A1:I

    const/4 v8, 0x0

    iput v8, v0, Landroidx/media3/ui/PlayerControlView;->D1:I

    const/16 v4, 0xc8

    iput v4, v0, Landroidx/media3/ui/PlayerControlView;->C1:I

    const v6, 0x7f0d0057

    const v9, 0x7f08012d

    const v10, 0x7f08012c

    const v11, 0x7f080129

    const v12, 0x7f080136

    const v13, 0x7f08012e

    const v14, 0x7f080137

    if-eqz v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget-object v7, Landroidx/media3/ui/R$styleable;->c:[I

    move/from16 v15, p3

    invoke-virtual {v4, v5, v7, v15, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v7, 0x6

    :try_start_0
    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    const/16 v7, 0xc

    invoke-virtual {v4, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/16 v7, 0xb

    invoke-virtual {v4, v7, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    const/16 v7, 0xa

    invoke-virtual {v4, v7, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    const/4 v7, 0x7

    invoke-virtual {v4, v7, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    const/16 v7, 0xf

    invoke-virtual {v4, v7, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    const/16 v7, 0x14

    invoke-virtual {v4, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    const/16 v7, 0x9

    const v15, 0x7f080128

    invoke-virtual {v4, v7, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    const/16 v7, 0x8

    const v8, 0x7f080127

    invoke-virtual {v4, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    const/16 v7, 0x11

    move-object/from16 v25, v2

    const v2, 0x7f080130

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x12

    move/from16 p3, v2

    const v2, 0x7f080131

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x10

    move/from16 v17, v2

    const v2, 0x7f08012f

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x23

    move/from16 v18, v2

    const v2, 0x7f080135

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x22

    move/from16 v19, v2

    const v2, 0x7f080134

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x25

    move/from16 v20, v2

    const v2, 0x7f08013a

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x24

    move/from16 v21, v2

    const v2, 0x7f080139

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const/16 v7, 0x2a

    move/from16 v22, v2

    const v2, 0x7f08013b

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget v7, v0, Landroidx/media3/ui/PlayerControlView;->A1:I

    move/from16 v23, v2

    const/16 v2, 0x20

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroidx/media3/ui/PlayerControlView;->A1:I

    iget v2, v0, Landroidx/media3/ui/PlayerControlView;->D1:I

    const/16 v7, 0x13

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroidx/media3/ui/PlayerControlView;->D1:I

    const/16 v2, 0x1d

    const/4 v7, 0x1

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v24, v2

    const/16 v2, 0x1a

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v26, v2

    const/16 v2, 0x1c

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v27, v2

    const/16 v2, 0x1b

    invoke-virtual {v4, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/16 v7, 0x1e

    move/from16 v28, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v7, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/16 v5, 0x1f

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move/from16 v29, v5

    const/16 v5, 0x21

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move/from16 v30, v5

    const/16 v5, 0x27

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Landroidx/media3/ui/PlayerControlView;->B1:Z

    iget v2, v0, Landroidx/media3/ui/PlayerControlView;->C1:I

    const/16 v5, 0x26

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V

    const/4 v2, 0x2

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move v5, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v4, v20

    move/from16 v11, v23

    move/from16 v9, v29

    move/from16 v10, v30

    move/from16 v12, p3

    move/from16 p3, v8

    move v8, v7

    move v7, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_0
    move-object/from16 v25, v2

    const v2, 0x7f08013b

    const v8, 0x7f080127

    const v15, 0x7f080128

    const v17, 0x7f080130

    const v18, 0x7f080131

    const v19, 0x7f08012f

    const v20, 0x7f080135

    const v21, 0x7f080134

    const v22, 0x7f08013a

    const v23, 0x7f080139

    move/from16 p3, v8

    move v5, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v12, v17

    move/from16 v13, v18

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v4, v21

    move/from16 v21, v22

    move/from16 v22, v23

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x1

    move v11, v2

    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v2, Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-direct {v2, v0}, Landroidx/media3/ui/PlayerControlView$ComponentListener;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->P:Landroidx/media3/common/Timeline$Period;

    new-instance v2, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->Q:Landroidx/media3/common/Timeline$Window;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->N:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/util/Formatter;

    move/from16 v17, v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v6, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->O:Ljava/util/Formatter;

    const/4 v2, 0x0

    new-array v4, v2, [J

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    new-array v4, v2, [Z

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    new-array v4, v2, [J

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->G1:[J

    new-array v4, v2, [Z

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H1:[Z

    new-instance v2, Lhn0;

    const/4 v4, 0x5

    invoke-direct {v2, v0, v4}, Lhn0;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->R:Lhn0;

    const/4 v2, 0x0

    :try_start_1
    const-class v4, Landroidx/media3/exoplayer/ExoPlayer;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    filled-new-array/range {v25 .. v25}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v4, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v18
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v2, v18

    goto :goto_1

    :catch_0
    move-object v6, v2

    goto :goto_1

    :catch_1
    move-object v4, v2

    move-object v6, v4

    :catch_2
    :goto_1
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->f:Ljava/lang/Class;

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->g:Ljava/lang/reflect/Method;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->h:Ljava/lang/reflect/Method;

    :try_start_4
    const-string v2, "androidx.media3.transformer.CompositionPlayer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    filled-new-array/range {v25 .. v25}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_3
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_2

    :catch_4
    const/4 v4, 0x0

    move-object v2, v4

    move-object v3, v2

    :catch_5
    :goto_2
    move-object v1, v4

    :goto_3
    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->i:Ljava/lang/Class;

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->j:Ljava/lang/reflect/Method;

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->k:Ljava/lang/reflect/Method;

    const v1, 0x7f0a01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/TextView;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/TextView;

    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v2, 0x7f0a01b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/widget/ImageView;

    new-instance v3, Lmo0;

    const/4 v6, 0x0

    invoke-direct {v3, v0, v6}, Lmo0;-><init>(Landroidx/media3/ui/PlayerControlView;I)V

    if-nez v2, :cond_2

    const/16 v6, 0x8

    goto :goto_4

    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    const v2, 0x7f0a01bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/widget/ImageView;

    new-instance v3, Lmo0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lmo0;-><init>(Landroidx/media3/ui/PlayerControlView;I)V

    if-nez v2, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    const v2, 0x7f0a01cd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v2, 0x7f0a01c5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    const v2, 0x7f0a01a7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->J:Landroid/view/View;

    if-eqz v2, :cond_6

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/media3/ui/TimeBar;

    const v4, 0x7f0a01c9

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v3, :cond_7

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    move-object/from16 v41, v1

    move/from16 v16, v9

    move/from16 v20, v10

    move/from16 v19, v15

    move/from16 v18, v17

    move/from16 v15, v22

    move/from16 v37, v24

    move/from16 v38, v26

    move/from16 v39, v27

    move/from16 v40, v28

    move/from16 v9, p3

    move v10, v5

    move/from16 v17, v8

    move/from16 v22, v13

    move/from16 v8, v21

    const/4 v13, 0x0

    move/from16 v21, v14

    goto/16 :goto_6

    :cond_7
    if-eqz v4, :cond_8

    move-object v3, v1

    new-instance v1, Landroidx/media3/ui/DefaultTimeBar;

    move-object v6, v4

    const/4 v4, 0x0

    move-object/from16 v16, v6

    const v6, 0x7f150163

    move-object/from16 v19, v3

    const/4 v3, 0x0

    move/from16 v18, v9

    move/from16 v9, p3

    move-object/from16 p3, v16

    move/from16 v16, v18

    move/from16 v20, v10

    move/from16 v18, v17

    move-object/from16 v41, v19

    move/from16 v37, v24

    move/from16 v38, v26

    move/from16 v39, v27

    move/from16 v40, v28

    move v10, v5

    move/from16 v17, v8

    move/from16 v19, v15

    move/from16 v8, v21

    move/from16 v15, v22

    move-object/from16 v5, p4

    move/from16 v22, v13

    move/from16 v21, v14

    const/4 v13, 0x0

    move v14, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    invoke-virtual {v1, v14}, Landroid/view/View;->setId(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v6, p3

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    goto :goto_6

    :cond_8
    move-object/from16 v41, v1

    move/from16 v16, v9

    move/from16 v20, v10

    move/from16 v19, v15

    move/from16 v18, v17

    move/from16 v15, v22

    move/from16 v37, v24

    move/from16 v38, v26

    move/from16 v39, v27

    move/from16 v40, v28

    move/from16 v9, p3

    move v10, v5

    move/from16 v17, v8

    move/from16 v22, v13

    move/from16 v8, v21

    const/4 v13, 0x0

    move/from16 v21, v14

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    :goto_6
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    if-eqz v1, :cond_9

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-interface {v1, v2}, Landroidx/media3/ui/TimeBar;->a(Landroidx/media3/ui/TimeBar$OnScrubListener;)V

    :cond_9
    invoke-static {v13}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->d:Landroid/os/Handler;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->c:Landroid/content/res/Resources;

    const v2, 0x7f0a01c4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    const v2, 0x7f0a01c7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move/from16 v4, v34

    invoke-virtual {v1, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    const v3, 0x7f0a01be

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    if-eqz v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, v32

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    const v4, 0x7f090015

    move-object/from16 v5, p1

    invoke-static {v4, v5}, Landroidx/core/content/res/ResourcesCompat;->b(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v4

    const v6, 0x7f0a01cb

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v14, 0x7f0a01cc

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v6, :cond_d

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    move/from16 v13, v35

    invoke-virtual {v1, v13, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    const/4 v13, 0x0

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/TextView;

    goto :goto_7

    :cond_d
    if-eqz v14, :cond_e

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v14, v0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/TextView;

    iput-object v14, v0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    goto :goto_7

    :cond_e
    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/TextView;

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    :goto_7
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    if-eqz v6, :cond_f

    iget-object v13, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v6, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    const v6, 0x7f0a01b5

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v13, 0x7f0a01b6

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v6, :cond_10

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v13, v33

    invoke-virtual {v1, v13, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    const/4 v6, 0x0

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/widget/TextView;

    goto :goto_8

    :cond_10
    const/4 v6, 0x0

    if-eqz v13, :cond_11

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/widget/TextView;

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    goto :goto_8

    :cond_11
    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/widget/TextView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    :goto_8
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    if-eqz v4, :cond_12

    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    const v4, 0x7f0a01ca

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->B:Landroid/widget/ImageView;

    if-eqz v4, :cond_13

    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_13
    const v6, 0x7f0a01cf

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    if-eqz v6, :cond_14

    iget-object v13, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v6, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_14
    const v13, 0x7f0b000b

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x42c80000    # 100.0f

    div-float/2addr v13, v14

    iput v13, v0, Landroidx/media3/ui/PlayerControlView;->f1:F

    const v13, 0x7f0b000a

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    iput v13, v0, Landroidx/media3/ui/PlayerControlView;->g1:F

    const v13, 0x7f0a01d8

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    if-eqz v13, :cond_15

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    invoke-virtual {v1, v11, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v13, v11}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    goto :goto_9

    :cond_15
    const/4 v11, 0x0

    :goto_9
    new-instance v14, Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-direct {v14, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v14, v0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iput-boolean v7, v14, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    const v7, 0x7f1409c2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f080138

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v1, v11, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const v11, 0x7f1409e3

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v7, v11}, [Ljava/lang/String;

    move-result-object v7

    const v11, 0x7f080124

    move-object/from16 p3, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v11, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    filled-new-array {v5, v4}, [Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-direct {v5, v0, v7, v4}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    const v4, 0x7f0700d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Landroidx/media3/ui/PlayerControlView;->t:I

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0d005d

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v7, -0x2

    const/4 v11, 0x1

    invoke-direct {v5, v4, v7, v7, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/PopupWindow;

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    invoke-virtual {v5, v4}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-boolean v11, v0, Landroidx/media3/ui/PlayerControlView;->J1:Z

    new-instance v4, Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media3/ui/DefaultTrackNameProvider;-><init>(Landroid/content/res/Resources;)V

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->r:Landroidx/media3/ui/DefaultTrackNameProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->j1:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v15, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->k1:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f1409b7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->l1:Ljava/lang/String;

    const v4, 0x7f1409b6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->m1:Ljava/lang/String;

    new-instance v4, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-direct {v4, v0}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->p:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    new-instance v4, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-direct {v4, v0}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->q:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    new-instance v4, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    const v5, 0x7f030005

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sget-object v7, Landroidx/media3/ui/PlayerControlView;->K1:[F

    invoke-direct {v4, v0, v5, v7}, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->o:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->S:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v10, v31

    invoke-virtual {v1, v10, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v15, v36

    invoke-virtual {v1, v15, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->n1:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v9, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->o1:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->V:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, v22

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, v21

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->h0:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, v19

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->d1:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    move/from16 v5, v18

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->e1:Landroid/graphics/drawable/Drawable;

    const v4, 0x7f1409bb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->p1:Ljava/lang/String;

    const v4, 0x7f1409ba

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->q1:Ljava/lang/String;

    const v4, 0x7f1409c5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->t0:Ljava/lang/String;

    const v4, 0x7f1409c6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->b1:Ljava/lang/String;

    const v4, 0x7f1409c4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->c1:Ljava/lang/String;

    const v4, 0x7f1409cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->h1:Ljava/lang/String;

    const v4, 0x7f1409cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView;->i1:Ljava/lang/String;

    const v1, 0x7f0a01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v11, 0x1

    invoke-virtual {v14, v1, v11}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    move/from16 v4, v38

    invoke-virtual {v14, v1, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    move/from16 v4, v37

    invoke-virtual {v14, v1, v4}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    move/from16 v1, v39

    invoke-virtual {v14, v2, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    move/from16 v1, v40

    invoke-virtual {v14, v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    move/from16 v7, v17

    invoke-virtual {v14, v6, v7}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    move/from16 v1, v16

    move-object/from16 v3, v41

    invoke-virtual {v14, v3, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    move/from16 v1, v20

    invoke-virtual {v14, v13, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    iget v1, v0, Landroidx/media3/ui/PlayerControlView;->D1:I

    if-eqz v1, :cond_16

    const/4 v8, 0x1

    :goto_a
    move-object/from16 v4, p3

    goto :goto_b

    :cond_16
    const/4 v8, 0x0

    goto :goto_a

    :goto_b
    invoke-virtual {v14, v4, v8}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    new-instance v1, Loj;

    const/4 v11, 0x1

    invoke-direct {v1, v0, v11}, Loj;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static a(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/Player;J)V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->y1:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->o()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->Q:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v3

    cmp-long v5, p2, v3

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    if-ne v2, v5, :cond_1

    move-wide p2, v3

    :goto_1
    invoke-interface {p1, v2, p2, p3}, Landroidx/media3/common/Player;->h0(IJ)V

    goto :goto_2

    :cond_1
    sub-long/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1, p2, p3}, Landroidx/media3/common/Player;->seekTo(J)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->r()V

    return-void
.end method

.method public static synthetic b(Landroidx/media3/ui/PlayerControlView;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    return-void
.end method

.method public static c(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z
    .locals 8

    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->o()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    const/16 v3, 0x64

    if-le v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, p1, v4, v5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/common/Timeline$Window;->m:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v1
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    invoke-interface {p0, v1}, Landroidx/media3/common/Player;->d(Landroidx/media3/common/PlaybackParameters;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Landroid/view/KeyEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v1, :cond_a

    const/16 v2, 0x58

    const/16 v3, 0x57

    const/16 v4, 0x7f

    const/16 v5, 0x7e

    const/16 v6, 0x4f

    const/16 v7, 0x55

    const/16 v8, 0x59

    const/16 v9, 0x5a

    if-eq v0, v9, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_9

    if-ne v0, v9, :cond_1

    invoke-interface {v1}, Landroidx/media3/common/Player;->h()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_9

    const/16 p0, 0xc

    invoke-interface {v1, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->y()V

    goto :goto_0

    :cond_1
    if-ne v0, v8, :cond_2

    const/16 v8, 0xb

    invoke-interface {v1, v8}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Landroidx/media3/common/Player;->z()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_9

    if-eq v0, v6, :cond_7

    if-eq v0, v7, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v1, v11}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->pause()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    goto :goto_0

    :cond_5
    const/4 p0, 0x7

    invoke-interface {v1, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->l()V

    goto :goto_0

    :cond_6
    const/16 p0, 0x9

    invoke-interface {v1, p0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->q()V

    goto :goto_0

    :cond_7
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->x1:Z

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->b0(Landroidx/media3/common/Player;Z)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v1}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    goto :goto_0

    :cond_8
    invoke-interface {v1, v11}, Landroidx/media3/common/Player;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {v1}, Landroidx/media3/common/Player;->pause()V

    :cond_9
    :goto_0
    return v11

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final e(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->t()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->J1:Z

    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->J1:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->t:I

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    neg-int v1, v1

    sub-int/2addr v1, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public final f(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;
    .locals 20

    move-object/from16 v0, p1

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v2, v0, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1a

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Tracks$Group;

    iget-object v6, v5, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    iget v6, v6, Landroidx/media3/common/TrackGroup;->c:I

    move/from16 v7, p2

    if-eq v6, v7, :cond_1

    :cond_0
    move-object/from16 v9, p0

    move-object/from16 v16, v2

    goto/16 :goto_12

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget v8, v5, Landroidx/media3/common/Tracks$Group;->a:I

    if-ge v6, v8, :cond_0

    iget-object v8, v5, Landroidx/media3/common/Tracks$Group;->d:[I

    aget v8, v8, v6

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    :goto_2
    move-object/from16 v9, p0

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    goto/16 :goto_11

    :cond_2
    iget-object v8, v5, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    iget-object v8, v8, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v8, v8, v6

    iget v9, v8, Landroidx/media3/common/Format;->e:I

    iget v10, v8, Landroidx/media3/common/Format;->j:I

    const/4 v11, 0x2

    and-int/2addr v9, v11

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v9, p0

    iget-object v12, v9, Landroidx/media3/ui/PlayerControlView;->r:Landroidx/media3/ui/DefaultTrackNameProvider;

    iget-object v13, v12, Landroidx/media3/ui/DefaultTrackNameProvider;->a:Landroid/content/res/Resources;

    iget-object v14, v12, Landroidx/media3/ui/DefaultTrackNameProvider;->a:Landroid/content/res/Resources;

    iget-object v15, v8, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget v3, v8, Landroidx/media3/common/Format;->G:I

    iget v11, v8, Landroidx/media3/common/Format;->w:I

    move-object/from16 v16, v2

    iget v2, v8, Landroidx/media3/common/Format;->v:I

    move-object/from16 v17, v5

    iget-object v5, v8, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v15}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v18, v5

    const/4 v5, -0x1

    if-eq v15, v5, :cond_4

    goto :goto_5

    :cond_4
    invoke-static/range {v18 .. v18}, Landroidx/media3/common/MimeTypes;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    :cond_5
    :goto_3
    const/4 v15, 0x2

    goto :goto_5

    :cond_6
    invoke-static/range {v18 .. v18}, Landroidx/media3/common/MimeTypes;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    :cond_7
    :goto_4
    const/4 v15, 0x1

    goto :goto_5

    :cond_8
    if-ne v2, v5, :cond_5

    if-eq v11, v5, :cond_9

    goto :goto_3

    :cond_9
    if-ne v3, v5, :cond_7

    iget v15, v8, Landroidx/media3/common/Format;->H:I

    if-eq v15, v5, :cond_a

    goto :goto_4

    :cond_a
    move v15, v5

    :goto_5
    const v18, 0x49742400    # 1000000.0f

    const-string v19, ""

    const/4 v7, 0x2

    if-ne v15, v7, :cond_e

    invoke-virtual {v12, v8}, Landroidx/media3/ui/DefaultTrackNameProvider;->b(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v5, :cond_c

    if-ne v11, v5, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v2

    const v7, 0x7f1409dc

    invoke-virtual {v13, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_c
    :goto_6
    move-object/from16 v2, v19

    :goto_7
    if-ne v10, v5, :cond_d

    :goto_8
    move-object/from16 v5, v19

    goto :goto_9

    :cond_d
    int-to-float v5, v10

    div-float v5, v5, v18

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f1409da

    invoke-virtual {v14, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_8

    :goto_9
    filled-new-array {v3, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/media3/ui/DefaultTrackNameProvider;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e

    :cond_e
    const/4 v2, 0x1

    if-ne v15, v2, :cond_16

    invoke-virtual {v12, v8}, Landroidx/media3/ui/DefaultTrackNameProvider;->a(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v7

    if-eq v3, v5, :cond_14

    if-ge v3, v2, :cond_f

    goto :goto_a

    :cond_f
    if-eq v3, v2, :cond_13

    const/4 v2, 0x2

    if-eq v3, v2, :cond_12

    const/4 v2, 0x6

    if-eq v3, v2, :cond_11

    const/4 v2, 0x7

    if-eq v3, v2, :cond_11

    const/16 v2, 0x8

    if-eq v3, v2, :cond_10

    const v2, 0x7f1409e7

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_10
    const v2, 0x7f1409e9

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_11
    const v2, 0x7f1409e8

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_12
    const v2, 0x7f1409e6

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_13
    const v2, 0x7f1409db

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_14
    :goto_a
    move-object/from16 v2, v19

    :goto_b
    if-ne v10, v5, :cond_15

    :goto_c
    move-object/from16 v3, v19

    goto :goto_d

    :cond_15
    int-to-float v3, v10

    div-float v3, v3, v18

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v5, 0x7f1409da

    invoke-virtual {v14, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    :goto_d
    filled-new-array {v7, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/media3/ui/DefaultTrackNameProvider;->c([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_16
    invoke-virtual {v12, v8}, Landroidx/media3/ui/DefaultTrackNameProvider;->a(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    :goto_e
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_10

    :cond_17
    iget-object v2, v8, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_f

    :cond_18
    const v3, 0x7f1409eb

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_19
    :goto_f
    const v2, 0x7f1409ea

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_10
    new-instance v3, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    invoke-direct {v3, v0, v4, v6, v2}, Landroidx/media3/ui/PlayerControlView$TrackInformation;-><init>(Landroidx/media3/common/Tracks;IILjava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :goto_11
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, p2

    move-object/from16 v2, v16

    move-object/from16 v5, v17

    goto/16 :goto_1

    :goto_12
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->i(I)V

    return-void

    :cond_1
    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->n:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getPlayer()Landroidx/media3/common/Player;
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    return-object p0
.end method

.method public getRepeatToggleModes()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->D1:I

    return p0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public getShowSubtitleButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public getShowTimeoutMs()I
    .locals 0

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->A1:I

    return p0
.end method

.method public getShowVrButton()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public final h(Landroidx/media3/common/Player;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->i:Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Landroidx/media3/common/Player;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->f:Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget v0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->A:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Landroidx/media3/common/Player;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->i(Landroidx/media3/common/Player;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->h:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->h(Landroidx/media3/common/Player;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->k:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :goto_1
    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return v0
.end method

.method public final l()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->o()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->s()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->u()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->w()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->q()V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->v()V

    return-void
.end method

.method public final n(Landroid/view/View;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_1

    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->f1:F

    goto :goto_0

    :cond_1
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->g1:F

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final o()V
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->w1:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->Q:Landroidx/media3/common/Timeline$Window;

    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->c(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v1

    :goto_0
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v2

    const/16 v3, 0xb

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-interface {v0, v4}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v4

    const/16 v5, 0x9

    invoke-interface {v0, v5}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v0, v1

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_1
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->c:Landroid/content/res/Resources;

    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    const-wide/16 v7, 0x3e8

    if-eqz v3, :cond_5

    iget-object v9, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroidx/media3/common/Player;->N0()J

    move-result-wide v9

    goto :goto_2

    :cond_3
    const-wide/16 v9, 0x1388

    :goto_2
    div-long/2addr v9, v7

    long-to-int v9, v9

    iget-object v10, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v6, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const v11, 0x7f12000f

    invoke-virtual {v5, v11, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v9, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    if-eqz v4, :cond_8

    iget-object v10, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroidx/media3/common/Player;->z0()J

    move-result-wide v10

    goto :goto_3

    :cond_6
    const-wide/16 v10, 0x3a98

    :goto_3
    div-long/2addr v10, v7

    long-to-int v7, v10

    iget-object v8, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/widget/TextView;

    if-eqz v8, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    if-eqz v9, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v10, 0x7f12000e

    invoke-virtual {v5, v10, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    invoke-virtual {p0, v6, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    invoke-virtual {p0, v9, v4}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    if-eqz p0, :cond_9

    invoke-interface {p0, v1}, Landroidx/media3/ui/TimeBar;->setEnabled(Z)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->y:Landroidx/media3/ui/f;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->m()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->a:Landroidx/media3/ui/PlayerControlView;

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->y:Landroidx/media3/ui/f;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->R:Lhn0;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->f()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b:Landroid/view/View;

    if-eqz p0, :cond_0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerControlView;->x1:Z

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->b0(Landroidx/media3/common/Player;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->S:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v1, :cond_2

    const v1, 0x7f1409c1

    goto :goto_1

    :cond_2
    const v1, 0x7f1409c0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->c:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_6

    :cond_3
    invoke-interface {v1}, Landroidx/media3/common/Player;->h()I

    move-result v3

    const/16 v4, 0x10

    invoke-interface {v1, v4}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v1}, Landroidx/media3/common/Player;->O0()Landroidx/media3/common/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v5

    :goto_3
    invoke-interface {v1, v5}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v6

    if-ne v3, v5, :cond_6

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_4

    :cond_6
    move v7, v2

    :goto_4
    const/4 v8, 0x4

    if-ne v3, v8, :cond_7

    invoke-interface {v1, v8}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v5

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v4, :cond_9

    if-nez v6, :cond_8

    if-nez v7, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    move v2, v5

    :cond_9
    :goto_6
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    :cond_a
    :goto_7
    return-void
.end method

.method public final q()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;

    iget-object v6, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->c:[F

    array-length v7, v6

    if-ge v3, v7, :cond_2

    aget v5, v6, v3

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_1

    move v4, v3

    move v2, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput v4, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->d:I

    iget-object v0, v5, Landroidx/media3/ui/PlayerControlView$PlaybackSpeedAdapter;->b:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->c:[Ljava/lang/String;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v1}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v1, v0

    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    return-void
.end method

.method public final r()V
    .locals 15

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    const/16 v1, 0x10

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->I1:J

    invoke-interface {v0}, Landroidx/media3/common/Player;->u()J

    move-result-wide v3

    add-long/2addr v3, v1

    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->I1:J

    invoke-interface {v0}, Landroidx/media3/common/Player;->x()J

    move-result-wide v5

    add-long/2addr v5, v1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroidx/media3/ui/PlayerControlView;->z1:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->N:Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->O:Ljava/util/Formatter;

    invoke-static {v2, v7, v3, v4}, Landroidx/media3/common/util/Util;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    if-eqz v1, :cond_4

    invoke-interface {v1, v3, v4}, Landroidx/media3/ui/TimeBar;->setPosition(J)V

    invoke-virtual {p0, v0}, Landroidx/media3/ui/PlayerControlView;->k(Landroidx/media3/common/Player;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide v5, v3

    :cond_3
    invoke-interface {v1, v5, v6}, Landroidx/media3/ui/TimeBar;->setBufferedPosition(J)V

    :cond_4
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->s1:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;->a()V

    :cond_5
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->R:Lhn0;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v5, 0x1

    if-nez v0, :cond_6

    move v6, v5

    goto :goto_1

    :cond_6
    invoke-interface {v0}, Landroidx/media3/common/Player;->h()I

    move-result v6

    :goto_1
    const-wide/16 v7, 0x3e8

    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroidx/media3/ui/TimeBar;->getPreferredUpdateDelay()J

    move-result-wide v5

    goto :goto_2

    :cond_7
    move-wide v5, v7

    :goto_2
    rem-long/2addr v3, v7

    sub-long v3, v7, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-interface {v0}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    long-to-float v1, v3

    div-float/2addr v1, v0

    float-to-long v7, v1

    :cond_8
    move-wide v9, v7

    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->C1:I

    int-to-long v11, v0

    const-wide/16 v13, 0x3e8

    invoke-static/range {v9 .. v14}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    const/4 v0, 0x4

    if-eq v6, v0, :cond_a

    if-eq v6, v5, :cond_a

    invoke-virtual {p0, v2, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_3
    return-void
.end method

.method public final s()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->B:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->D1:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->t0:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->V:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    const/16 v5, 0xf

    invoke-interface {v1, v5}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    invoke-interface {v1}, Landroidx/media3/common/Player;->i()I

    move-result v1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->h0:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->c1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->W:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlViewLayoutManager;->D:Z

    return-void
.end method

.method public setMediaRouteButtonViewProvider(Landroidx/media3/common/ViewProvider;)V
    .locals 3

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroidx/media3/common/ViewProvider;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v2, Landroidx/media3/ui/PlayerControlView$1;

    invoke-direct {v2, p0, v0, v1}, Landroidx/media3/ui/PlayerControlView$1;-><init>(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->d:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ldc;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldc;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v2, v0}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_1
    const-string p0, "The media route button placeholder has no parent view."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "The media route button placeholder is missing."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->t1:Landroidx/media3/ui/PlayerControlView$OnFullScreenModeChangedListener;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/16 v3, 0x8

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->F:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->G:Landroid/widget/ImageView;

    if-nez p0, :cond_4

    return-void

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;)V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-ne v0, p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/media3/ui/PlayerControlView$ComponentListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->V(Landroidx/media3/common/Player$Listener;)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Landroidx/media3/common/Player;->Y(Landroidx/media3/common/Player$Listener;)V

    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->m()V

    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->s1:Landroidx/media3/ui/PlayerControlView$ProgressUpdateListener;

    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->D1:I

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/16 v3, 0xf

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {v0}, Landroidx/media3/common/Player;->i()I

    move-result v0

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->E0(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v2, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->E0(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {v0, v3}, Landroidx/media3/common/Player;->E0(I)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->s()V

    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->o()V

    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->w1:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->v()V

    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->o()V

    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->x1:Z

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->p()V

    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->o()V

    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->o()V

    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->u()V

    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->A1:I

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->g()V

    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, p1}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->h(Landroid/view/View;Z)V

    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->j(III)I

    move-result p1

    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->C1:I

    return-void
.end method

.method public setTimeBarScrubbingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->B1:Z

    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Landroidx/media3/ui/PlayerControlView;->t:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-virtual {v3, p0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public final u()V
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->v1:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->i1:Ljava/lang/String;

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->e1:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    const/16 v5, 0xe

    invoke-interface {v1, v5}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    invoke-interface {v1}, Landroidx/media3/common/Player;->w()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroidx/media3/ui/PlayerControlView;->d1:Landroid/graphics/drawable/Drawable;

    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v1}, Landroidx/media3/common/Player;->w()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->h1:Ljava/lang/String;

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final v()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->w1:Z

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->Q:Landroidx/media3/common/Timeline$Window;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-static {v1, v3}, Landroidx/media3/ui/PlayerControlView;->c(Landroidx/media3/common/Player;Landroidx/media3/common/Timeline$Window;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->y1:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->I1:J

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Landroidx/media3/common/Player;->p()Landroidx/media3/common/Timeline;

    move-result-object v2

    goto :goto_1

    :cond_2
    sget-object v2, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v8

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v8, :cond_13

    invoke-interface {v1}, Landroidx/media3/common/Player;->v()I

    move-result v1

    iget-boolean v8, v0, Landroidx/media3/ui/PlayerControlView;->y1:Z

    if-eqz v8, :cond_3

    move v11, v4

    goto :goto_2

    :cond_3
    move v11, v1

    :goto_2
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v8

    sub-int/2addr v8, v5

    goto :goto_3

    :cond_4
    move v8, v1

    :goto_3
    move v14, v4

    move-wide v12, v6

    :goto_4
    if-gt v11, v8, :cond_12

    move-wide v15, v6

    if-ne v11, v1, :cond_5

    invoke-static {v12, v13}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v6

    iput-wide v6, v0, Landroidx/media3/ui/PlayerControlView;->I1:J

    :cond_5
    invoke-virtual {v2, v11, v3}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget-wide v6, v3, Landroidx/media3/common/Timeline$Window;->m:J

    cmp-long v6, v6, v9

    if-nez v6, :cond_6

    iget-boolean v1, v0, Landroidx/media3/ui/PlayerControlView;->y1:Z

    xor-int/2addr v1, v5

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    goto/16 :goto_c

    :cond_6
    iget v6, v3, Landroidx/media3/common/Timeline$Window;->n:I

    :goto_5
    iget v7, v3, Landroidx/media3/common/Timeline$Window;->o:I

    if-gt v6, v7, :cond_11

    iget-object v7, v0, Landroidx/media3/ui/PlayerControlView;->P:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v6, v7, v4}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-wide/from16 v17, v9

    iget-object v9, v7, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    iget v10, v9, Landroidx/media3/common/AdPlaybackState;->e:I

    iget v9, v9, Landroidx/media3/common/AdPlaybackState;->b:I

    :goto_6
    if-ge v10, v9, :cond_10

    invoke-virtual {v7, v10}, Landroidx/media3/common/Timeline$Period;->d(I)J

    move-result-wide v19

    const-wide/high16 v21, -0x8000000000000000L

    cmp-long v21, v19, v21

    if-nez v21, :cond_9

    iget-wide v4, v7, Landroidx/media3/common/Timeline$Period;->d:J

    cmp-long v19, v4, v17

    if-nez v19, :cond_8

    :cond_7
    move/from16 v16, v1

    move-object/from16 v24, v2

    const/4 v2, 0x1

    goto/16 :goto_b

    :cond_8
    move-wide/from16 v19, v4

    :cond_9
    iget-wide v4, v7, Landroidx/media3/common/Timeline$Period;->e:J

    add-long v19, v19, v4

    cmp-long v4, v19, v15

    if-ltz v4, :cond_7

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    array-length v5, v4

    if-ne v14, v5, :cond_b

    array-length v5, v4

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    :goto_7
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    :cond_b
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    add-long v19, v12, v19

    invoke-static/range {v19 .. v20}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v19

    aput-wide v19, v4, v14

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    iget-object v5, v7, Landroidx/media3/common/Timeline$Period;->g:Landroidx/media3/common/AdPlaybackState;

    invoke-virtual {v5, v10}, Landroidx/media3/common/AdPlaybackState;->a(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v5

    iget v15, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->b:I

    move/from16 v16, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_c

    move-object/from16 v24, v2

    const/4 v2, 0x1

    const/16 v22, 0x1

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v15, :cond_f

    move/from16 v23, v1

    iget-object v1, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->f:[I

    aget v1, v1, v23

    move-object/from16 v24, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    if-ne v1, v2, :cond_d

    goto :goto_9

    :cond_d
    add-int/lit8 v1, v23, 0x1

    move-object/from16 v2, v24

    goto :goto_8

    :cond_e
    :goto_9
    move/from16 v22, v2

    goto :goto_a

    :cond_f
    move-object/from16 v24, v2

    const/4 v2, 0x1

    const/16 v22, 0x0

    :goto_a
    xor-int/lit8 v1, v22, 0x1

    aput-boolean v1, v4, v14

    add-int/lit8 v14, v14, 0x1

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move v5, v2

    move/from16 v1, v16

    move-object/from16 v2, v24

    const/4 v4, 0x0

    const-wide/16 v15, 0x0

    goto/16 :goto_6

    :cond_10
    move/from16 v16, v1

    move-object/from16 v24, v2

    move v2, v5

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v9, v17

    move-object/from16 v2, v24

    const/4 v4, 0x0

    const-wide/16 v15, 0x0

    goto/16 :goto_5

    :cond_11
    move/from16 v16, v1

    move-object/from16 v24, v2

    move v2, v5

    move-wide/from16 v17, v9

    iget-wide v4, v3, Landroidx/media3/common/Timeline$Window;->m:J

    add-long/2addr v12, v4

    add-int/lit8 v11, v11, 0x1

    move v5, v2

    move-object/from16 v2, v24

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    goto/16 :goto_4

    :cond_12
    :goto_c
    move-wide v6, v12

    goto :goto_e

    :cond_13
    move-wide/from16 v17, v9

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Landroidx/media3/common/Player;->m0()J

    move-result-wide v1

    cmp-long v3, v1, v17

    if-eqz v3, :cond_14

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v6

    :goto_d
    const/4 v14, 0x0

    goto :goto_e

    :cond_14
    const-wide/16 v6, 0x0

    goto :goto_d

    :goto_e
    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v1

    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/widget/TextView;

    if-eqz v3, :cond_15

    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->N:Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->O:Ljava/util/Formatter;

    invoke-static {v4, v5, v1, v2}, Landroidx/media3/common/util/Util;->E(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->M:Landroidx/media3/ui/TimeBar;

    if-eqz v3, :cond_17

    invoke-interface {v3, v1, v2}, Landroidx/media3/ui/TimeBar;->setDuration(J)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->G1:[J

    array-length v2, v1

    add-int v4, v14, v2

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    array-length v6, v5

    if-le v4, v6, :cond_16

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    :cond_16
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    const/4 v6, 0x0

    invoke-static {v1, v6, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->H1:[Z

    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    invoke-static {v1, v6, v5, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->E1:[J

    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->F1:[Z

    invoke-interface {v3, v1, v2, v4}, Landroidx/media3/ui/TimeBar;->b([J[ZI)V

    :cond_17
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView;->r()V

    return-void
.end method

.method public final w()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, v0, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->b:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    const/16 v6, 0x1e

    invoke-interface {v1, v6}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    const/16 v6, 0x1d

    invoke-interface {v1, v6}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    invoke-interface {v1}, Landroidx/media3/common/Player;->n()Landroidx/media3/common/Tracks;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->b:Ljava/util/List;

    iget-object v7, v2, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->d:Landroidx/media3/ui/PlayerControlView;

    iget-object v8, v7, Landroidx/media3/ui/PlayerControlView;->r1:Landroidx/media3/common/Player;

    iget-object v9, v7, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Landroidx/media3/common/Player;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1409e2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v9, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->c:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, Landroidx/media3/ui/PlayerControlView$AudioTrackSelectionAdapter;->e(Landroidx/media3/common/TrackSelectionParameters;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1409e1

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v9, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->c:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;

    iget-object v8, v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;->a:Landroidx/media3/common/Tracks$Group;

    iget v10, v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;->b:I

    iget-object v8, v8, Landroidx/media3/common/Tracks$Group;->e:[Z

    aget-boolean v8, v8, v10

    if-eqz v8, :cond_3

    iget-object v2, v7, Landroidx/media3/ui/PlayerControlView$TrackInformation;->c:Ljava/lang/String;

    iget-object v6, v9, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->c:[Ljava/lang/String;

    aput-object v2, v6, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroidx/media3/ui/PlayerControlViewLayoutManager;

    invoke-virtual {v2, v3}, Landroidx/media3/ui/PlayerControlViewLayoutManager;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Landroidx/media3/ui/PlayerControlView;->f(Landroidx/media3/common/Tracks;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->e(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$TextTrackSelectionAdapter;->e(Ljava/util/List;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$TrackSelectionAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v5

    goto :goto_3

    :cond_7
    move v0, v4

    :goto_3
    invoke-virtual {p0, v3, v0}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroidx/media3/ui/PlayerControlView$SettingsAdapter;

    invoke-virtual {v0, v5}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->a(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0, v4}, Landroidx/media3/ui/PlayerControlView$SettingsAdapter;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v4, v5

    :cond_9
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->H:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Landroidx/media3/ui/PlayerControlView;->n(Landroid/view/View;Z)V

    return-void
.end method
