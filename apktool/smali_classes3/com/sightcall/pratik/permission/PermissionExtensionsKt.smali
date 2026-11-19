.class public final Lcom/sightcall/pratik/permission/PermissionExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u001aL\u0010\u0007\u001a\u00020\u0008*\u00020\t2>\u0010\n\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00080\u000bH\u0007\u001aL\u0010\u0007\u001a\u00020\u0008*\u00020\u00122>\u0010\n\u001a:\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\r0\u000c\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0015\u0012\u0013\u0018\u00010\u0005\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00080\u000bH\u0007\u001a$\u0010\u0013\u001a\u00020\u0008*\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000c2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u001a$\u0010\u0013\u001a\u00020\u0008*\u00020\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000c2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u001a,\u0010\u0016\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000c2\u0014\u0010\u0017\u001a\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0018\u00010\u0003H\u0002\u001a\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000c*\u0008\u0012\u0004\u0012\u00020\r0\u000c\u001a\u0010\u0010\u0019\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\r0\u000c\"&\u0010\u0000\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00030\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "permissionsRequesters",
        "Ljava/util/WeakHashMap;",
        "",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "",
        "",
        "permissionsTag",
        "registerForPermissions",
        "",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "callback",
        "Lkotlin/Function2;",
        "",
        "Lcom/sightcall/pratik/permission/PermissionResult;",
        "Lkotlin/ParameterName;",
        "name",
        "results",
        "tag",
        "Landroidx/fragment/app/Fragment;",
        "requestPermissions",
        "permissions",
        "Lcom/sightcall/pratik/permission/Permission;",
        "request",
        "permissionsRequester",
        "deniedPermissions",
        "areAllPermissionsGranted",
        "",
        "pratik_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final permissionsRequesters:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final permissionsTag:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsRequesters:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsTag:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->registerForPermissions$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/Map;)V

    return-void
.end method

.method public static final areAllPermissionsGranted(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/PermissionResult;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->deniedPermissions(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/Fragment;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->registerForPermissions$lambda$1(Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/Fragment;Ljava/util/Map;)V

    return-void
.end method

.method public static final deniedPermissions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/PermissionResult;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/Permission;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sightcall/pratik/permission/PermissionResult;

    invoke-virtual {v2}, Lcom/sightcall/pratik/permission/PermissionResult;->isGranted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/pratik/permission/PermissionResult;

    invoke-virtual {v1}, Lcom/sightcall/pratik/permission/PermissionResult;->getPermission()Lcom/sightcall/pratik/permission/Permission;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static final registerForPermissions(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/PermissionResult;",
            ">;-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsRequesters:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v2, Lp3;

    const/16 v3, 0x14

    invoke-direct {v2, p1, p0, v3}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v2}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final registerForPermissions(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/util/List<",
            "Lcom/sightcall/pratik/permission/PermissionResult;",
            ">;-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsRequesters:Ljava/util/WeakHashMap;

    .line 29
    new-instance v1, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v1}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v2, Lp3;

    const/16 v3, 0x15

    invoke-direct {v2, p1, p0, v3}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final registerForPermissions$lambda$0(Lkotlin/jvm/functions/Function2;Landroidx/appcompat/app/AppCompatActivity;Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/sightcall/pratik/permission/PermissionMappersKt;->toPermissionResults(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsTag:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final registerForPermissions$lambda$1(Lkotlin/jvm/functions/Function2;Landroidx/fragment/app/Fragment;Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/sightcall/pratik/permission/PermissionMappersKt;->toPermissionResults(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    sget-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsTag:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final request(Ljava/util/List;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/pratik/permission/Permission;",
            ">;",
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/pratik/permission/Permission;

    invoke-static {v1}, Lcom/sightcall/pratik/permission/PermissionMappersKt;->toManifestPermission(Lcom/sightcall/pratik/permission/Permission;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "registerForPermissions must first be called, to be able to request permissions"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static final requestPermissions(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/pratik/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsTag:Ljava/util/WeakHashMap;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object p2, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsRequesters:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p1, p0}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->request(Ljava/util/List;Landroidx/activity/result/ActivityResultLauncher;)V

    return-void
.end method

.method public static final requestPermissions(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/pratik/permission/Permission;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsTag:Ljava/util/WeakHashMap;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->permissionsRequesters:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/result/ActivityResultLauncher;

    invoke-static {p1, p0}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->request(Ljava/util/List;Landroidx/activity/result/ActivityResultLauncher;)V

    return-void
.end method

.method public static synthetic requestPermissions$default(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 9
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->requestPermissions(Landroidx/appcompat/app/AppCompatActivity;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic requestPermissions$default(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sightcall/pratik/permission/PermissionExtensionsKt;->requestPermissions(Landroidx/fragment/app/Fragment;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
