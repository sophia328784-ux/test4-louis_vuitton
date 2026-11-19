.class public final synthetic Landroidx/camera/core/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/camera/core/impl/Config$Option;

    check-cast p2, Landroidx/camera/core/impl/Config$Option;

    sget-object p0, Landroidx/camera/core/impl/OptionsBundle;->N:Landroidx/camera/core/impl/d;

    check-cast p1, Landroidx/camera/core/impl/AutoValue_Config_Option;

    iget-object p0, p1, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    check-cast p2, Landroidx/camera/core/impl/AutoValue_Config_Option;

    iget-object p1, p2, Landroidx/camera/core/impl/AutoValue_Config_Option;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
