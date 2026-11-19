.class public final synthetic Luk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


# instance fields
.field public final synthetic b:Lcom/google/accompanist/systemuicontroller/SystemUiController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk;->b:Lcom/google/accompanist/systemuicontroller/SystemUiController;

    return-void
.end method


# virtual methods
.method public final f(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;)V
    .locals 4

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/CatalogStoreModeKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v0, Landroidx/compose/ui/graphics/Color;->h:J

    sget-object p1, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    const-class v2, Lcom/vuitton/android/presentation/screen/storemode/StoreModeRoute$Plp;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, v2}, Landroidx/navigation/NavDestination$Companion;->c(Landroidx/navigation/NavDestination;Lkotlin/reflect/KClass;)Z

    move-result p1

    iget-object p0, p0, Luk;->b:Lcom/google/accompanist/systemuicontroller/SystemUiController;

    invoke-static {p0, v0, v1, p1}, Lcom/google/accompanist/systemuicontroller/SystemUiController;->b(Lcom/google/accompanist/systemuicontroller/SystemUiController;JZ)V

    return-void
.end method
