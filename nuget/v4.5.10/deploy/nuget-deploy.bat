SET NUGET=C:\src\ServiceStack\src\.nuget\nuget
%NUGET% setApiKey 34ca0303-aa1e-4b39-85ff-eeaebbdec600

%NUGET% push ServiceStack.OrmLite.Firebird.4.5.10.nupkg -Source https://www.nuget.org/api/v2/package
%NUGET% push ServiceStack.OrmLite.Oracle.4.5.10.nupkg -Source https://www.nuget.org/api/v2/package
%NUGET% push ServiceStack.OrmLite.Oracle.Signed.4.5.10.nupkg -Source https://www.nuget.org/api/v2/package
%NUGET% push ServiceStack.OrmLite.VistaDb.4.5.10.nupkg -Source https://www.nuget.org/api/v2/package
