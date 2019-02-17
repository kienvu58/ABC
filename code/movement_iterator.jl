function movements(dir=joinpath(@__DIR__, "..", "data", "csv"))
    sub_dirs = filter(isdir, joinpath.(dir, readdir(dir)))
    filter(file->!occursin(r"\.DS_Store", file),
        vcat(
            map(sub_dirs) do sub_dir
                joinpath.(sub_dir, readdir(sub_dir))
            end...
        )
    )
end
