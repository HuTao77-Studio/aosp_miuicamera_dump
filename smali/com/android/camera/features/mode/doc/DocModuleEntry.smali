.class public Lcom/android/camera/features/mode/doc/DocModuleEntry;
.super Lcom/android/camera/module/entry/BaseModuleEntry;
.source "DocModuleEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/module/entry/BaseModuleEntry;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEntryName()Ljava/lang/String;
    .locals 0

    .line 1
    const-class p0, Lcom/android/camera/features/mode/doc/DocModuleEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getModeItem()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const v1, 0x7f120830

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/entry/BaseModuleEntry;->createComponentDataItem([II)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    .line 3
    new-instance v0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    invoke-direct {v0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->setDataItem(Lcom/android/camera/data/data/ComponentDataItem;)Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->build()Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x7f080459
        0x7f080aff
        0x7f080b00
    .end array-data
.end method

.method public getModeUI()Lcom/android/camera/fragment/modeui/IModeUI;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/doc/DocModeUI;

    iget-object p0, p0, Lcom/android/camera/module/entry/BaseModuleEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mode/doc/DocModeUI;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getModule()Lcom/android/camera/module/Module;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/features/mode/doc/DocModule;

    invoke-direct {p0}, Lcom/android/camera/features/mode/doc/DocModule;-><init>()V

    return-object p0
.end method

.method public getModuleDevice()Lcom/android/camera/features/mode/IModuleDevice;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/camera/features/mode/doc/DocModuleDevice;

    invoke-direct {p0}, Lcom/android/camera/features/mode/doc/DocModuleDevice;-><init>()V

    return-object p0
.end method

.method public getModuleId()I
    .locals 0

    const/16 p0, 0xba

    return p0
.end method

.method public support()Z
    .locals 0

    .line 1
    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()LOooO0O0/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0O0/OooO0Oo/OooO00o/OooO00o;->o00OOooo()Z

    move-result p0

    return p0
.end method
